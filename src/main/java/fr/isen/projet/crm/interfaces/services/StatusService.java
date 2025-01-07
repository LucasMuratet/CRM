package fr.isen.projet.crm.interfaces.services;

import com.fasterxml.jackson.core.JsonProcessingException;
import java.sql.SQLException;
import java.util.Map;

public interface StatusService {

    String getStatus() throws JsonProcessingException;
    Map<String, Long> getTableCounts() throws SQLException;
}
