package fr.isen.projet.crm.interfaces.services;

import fr.isen.projet.crm.interfaces.models.TicketTaskModel;

import java.util.List;

public interface TicketTaskService {

    List<TicketTaskModel> getAllTasks();

    List<TicketTaskModel> getAllTasksByTicketId(final String ticketId);

    TicketTaskModel getTaskById(final String id);

    TicketTaskModel addTask(final TicketTaskModel taskModel);

    TicketTaskModel modifyTask(final TicketTaskModel taskModel);

    void deleteTask(final String id);
}
