package fr.isen.projet.crm.utils;

import java.sql.Timestamp;

public class TicketUtil {

    /**
     * Convertit une date au format ISO 8601 en un Timestamp.
     */
    public static Timestamp parseIsoDateToTimestamp(String isoDate) {
        // Exemple : "2025-01-06T23:00:00" devient "2025-01-06 23:00:00"
        String formattedDate = isoDate.replace("T", " ");
        return Timestamp.valueOf(formattedDate);
    }
}