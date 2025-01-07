package fr.isen.projet.crm.interfaces.models;

import com.fasterxml.jackson.annotation.JsonFormat;
import fr.isen.projet.crm.interfaces.models.enums.ACTION_TYPE;

import java.util.Date;

public record TicketActionModel(
        String uuid_action,
        String ticket,
        @JsonFormat(pattern = "yyyy-MM-dd") Date date_action,
        ACTION_TYPE action_type,
        String description,
        String uuid_user
) {
}
