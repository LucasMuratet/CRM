package fr.isen.projet.crm.interfaces.dto;

import fr.isen.projet.crm.interfaces.models.TicketClientModel;
import fr.isen.projet.crm.interfaces.models.TicketActionModel;
import fr.isen.projet.crm.interfaces.models.TicketTaskModel;

import java.util.List;

public class TicketAggregationDTO {
    private TicketClientModel ticket;
    private List<TicketActionModel> actions;
    private List<TicketTaskModel> tasks;

    // Getters and Setters
    public TicketClientModel getTicket() {
        return ticket;
    }

    public void setTicket(TicketClientModel ticket) {
        this.ticket = ticket;
    }

    public List<TicketActionModel> getActions() {
        return actions;
    }

    public void setActions(List<TicketActionModel> actions) {
        this.actions = actions;
    }

    public List<TicketTaskModel> getTasks() {
        return tasks;
    }

    public void setTasks(List<TicketTaskModel> tasks) {
        this.tasks = tasks;
    }
}
