package fr.isen.projet.crm.interfaces.models;

import com.fasterxml.jackson.annotation.JsonFormat;
import fr.isen.projet.crm.interfaces.models.enums.PRIORITY;
import fr.isen.projet.crm.interfaces.models.enums.REQUEST_TYPE;
import fr.isen.projet.crm.interfaces.models.enums.SOURCE;
import fr.isen.projet.crm.interfaces.models.enums.STATUS;

import java.util.Date;

public record TicketClientModel(
        String uuid_ticket,
        String uuid_client,
        String title,
        String description,
        String comments,
        @JsonFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss") Date date_created,
        @JsonFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss") Date date_update,
        STATUS status,
        PRIORITY priority,
        REQUEST_TYPE request_type,
        SOURCE source
) {
}
