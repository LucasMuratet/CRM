package fr.isen.projet.crm.implementations;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import fr.isen.projet.crm.interfaces.services.StatusService;
import io.agroal.api.AgroalDataSource;
import jakarta.enterprise.inject.spi.CDI;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;

public class StatusServiceImpl implements StatusService {

    AgroalDataSource dataSource = CDI.current().select(AgroalDataSource.class).get();

    @Override
    public String getStatus() throws JsonProcessingException {
        String state = "OK"; // OK, KO ou Dégradé
        String version = "1.0";

        Map<String, Long> tableCounts = new HashMap<>();
        try {
            tableCounts = getTableCounts();
        } catch (Exception e) {
            state = "KO"; // Indiquer une erreur si la base de données ne répond pas
            e.printStackTrace();
        }

        Map<String, Object> statusResponse = new HashMap<>();
        statusResponse.put("state", state);
        statusResponse.put("version", version);
        statusResponse.put("tableCounts", tableCounts);

        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.writeValueAsString(statusResponse);
    }

    @Override
    public Map<String, Long> getTableCounts() throws SQLException {
        Map<String, Long> tableCounts = new HashMap<>();

        String[] myTables = {"tickets", "ticket_actions", "ticket_tasks"};

        try (Connection connection = dataSource.getConnection()) {
            for (String tableName : myTables) {
                try (PreparedStatement countStatement = connection.prepareStatement("SELECT COUNT(*) FROM `" + tableName + "`");
                     ResultSet countResult = countStatement.executeQuery()) {

                    if (countResult.next()) {
                        tableCounts.put(tableName, countResult.getLong(1));
                    }
                } catch (SQLException e) {
                    System.err.println("Erreur lors du comptage de la table " + tableName + ": " + e.getMessage());
                }
            }
        } catch (SQLException e) {
            System.err.println("Erreur lors de la connexion ou de l'exécution de la requête : " + e.getMessage());
            throw e;
        }

        return tableCounts;
    }
}
