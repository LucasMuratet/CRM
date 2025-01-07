package fr.isen.projet.crm.interfaces.models;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public record TicketTaskModel(
        String uuid_task,
        String ticket,
        @JsonFormat(pattern = "yyyy-MM-dd") Date date_reminder,
        String description,
        String uuid_user
) {
}
