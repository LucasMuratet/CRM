package fr.isen.projet.crm.resources;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Path("/status")
public class statusResource {

    // Configuration de la base de données
    private static final String DB_URL = "jdbc:mysql://mysql-javadev.alwaysdata.net/javadev_crm"; // URL de la base de données
    private static final String DB_USER = "javadev_user"; // Nom d'utilisateur
    private static final String DB_PASSWORD = "Isen3Dev"; // Mot de passe
    private static final String DB_DRIVER = "com.mysql.cj.jdbc.Driver"; // Driver JDBC

    static {
        try {
            // Charger le driver JDBC
            Class.forName(DB_DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
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

    private Map<String, Long> getTableCounts() throws SQLException {
        Map<String, Long> tableCounts = new HashMap<>();

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            // Récupérer la liste des tables
            try (PreparedStatement tableStatement = connection.prepareStatement("SHOW TABLES");
                 ResultSet tables = tableStatement.executeQuery()) {

                while (tables.next()) {
                    String tableName = tables.getString(1);

                    // Effectuer un COUNT() pour chaque table
                    try (PreparedStatement countStatement = connection.prepareStatement("SELECT COUNT(*) FROM `" + tableName + "`");
                         ResultSet countResult = countStatement.executeQuery()) {

                        if (countResult.next()) {
                            tableCounts.put(tableName, countResult.getLong(1));
                        }
                    } catch (SQLException e) {
                        System.err.println("Erreur lors du comptage pour la table " + tableName + ": " + e.getMessage());
                    }
                }
            }
        } catch (SQLException e) {
            System.err.println("Erreur lors de la connexion ou de l'exécution de la requête : " + e.getMessage());
            throw e;
        }

        return tableCounts;
    }
}
