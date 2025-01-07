package fr.isen.projet.crm.interfaces.services;

import fr.isen.projet.crm.interfaces.models.TicketActionModel;

import java.util.List;

public interface TicketActionService {

    List<TicketActionModel> getAllActions();

    List<TicketActionModel> getAllActionsByTicketId(final String ticketId);

    TicketActionModel getActionById(final String id);

    TicketActionModel addAction(final TicketActionModel actionModel);

    TicketActionModel modifyAction(final TicketActionModel actionModel);

    void deleteAction(final String id);
}
