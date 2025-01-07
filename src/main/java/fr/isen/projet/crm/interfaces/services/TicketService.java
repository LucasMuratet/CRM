package fr.isen.projet.crm.interfaces.services;

import fr.isen.projet.crm.interfaces.models.TicketClientModel;
import fr.isen.projet.crm.interfaces.models.enums.PRIORITY;
import fr.isen.projet.crm.interfaces.models.enums.REQUEST_TYPE;
import fr.isen.projet.crm.interfaces.models.enums.SOURCE;
import fr.isen.projet.crm.interfaces.models.enums.STATUS;

import java.util.List;

public interface TicketService {

    List<TicketClientModel> getAllTickets();

    List<TicketClientModel> getAllTicketsByUserId(final String id);

    TicketClientModel getTicketById(final String id);

    TicketClientModel addTicket(final TicketClientModel ticketModel);

    TicketClientModel modifyTicket(final TicketClientModel ticketModel);

    TicketClientModel modifyStatus(final String id, final STATUS status);

    void deleteTicket(final String id);

    List<TicketClientModel> searchTickets(
            STATUS status,
            PRIORITY priority,
            SOURCE source,
            REQUEST_TYPE requestType,
            String title,
            String description,
            String dateCreatedAfter,
            String dateCreatedBefore
    );
}
