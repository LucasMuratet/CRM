package fr.isen.projet.crm.interfaces.services;

import fr.isen.projet.crm.interfaces.models.TicketClientModel;

import java.util.List;

public interface TicketService {

    List<TicketClientModel> getTickets();

    TicketClientModel getTicketById(final String id);

    TicketClientModel addTicket(final TicketClientModel ticketModel);

    TicketClientModel modifyTicket(final TicketClientModel ticketModel);

    void deleteTicket(int id);
}
