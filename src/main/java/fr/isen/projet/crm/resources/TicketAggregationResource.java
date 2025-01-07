package fr.isen.projet.crm.resources;

import fr.isen.projet.crm.interfaces.dto.TicketAggregationDTO;
import fr.isen.projet.crm.implementations.TicketActionServiceImpl;
import fr.isen.projet.crm.implementations.TicketServiceImpl;
import fr.isen.projet.crm.implementations.TicketTaskServiceImpl;
import fr.isen.projet.crm.interfaces.models.TicketClientModel;
import fr.isen.projet.crm.interfaces.services.TicketActionService;
import fr.isen.projet.crm.interfaces.services.TicketService;
import fr.isen.projet.crm.interfaces.services.TicketTaskService;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;

import java.util.ArrayList;
import java.util.List;

/**
 * Resource class for aggregating ticket information via REST API.
 */
@Path("/ticket-aggregation")
public class TicketAggregationResource {

    private final TicketService ticketService;
    private final TicketActionService actionService;
    private final TicketTaskService taskService;

    public TicketAggregationResource() {
        this.ticketService = new TicketServiceImpl();
        this.actionService = new TicketActionServiceImpl();
        this.taskService = new TicketTaskServiceImpl();
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public TicketAggregationDTO getAggregatedTicketById(@PathParam("id") String id) {
        TicketAggregationDTO dto = new TicketAggregationDTO();
        dto.setTicket(ticketService.getTicketById(id));
        dto.setActions(actionService.getAllActionsByTicketId(id));
        dto.setTasks(taskService.getAllTasksByTicketId(id));
        return dto;
    }

    @GET
    @Path("/user/{userId}")
    @Produces(MediaType.APPLICATION_JSON)
    public List<TicketAggregationDTO> getAggregatedTicketsByUserId(@PathParam("userId") String userId) {
        List<TicketAggregationDTO> aggregatedTickets = new ArrayList<>();
        List<TicketClientModel> tickets = ticketService.getAllTicketsByUserId(userId);

        for (TicketClientModel ticket : tickets) {
            TicketAggregationDTO dto = new TicketAggregationDTO();
            dto.setTicket(ticket);
            dto.setActions(actionService.getAllActionsByTicketId(ticket.uuid_ticket()));
            dto.setTasks(taskService.getAllTasksByTicketId(ticket.uuid_ticket()));
            aggregatedTickets.add(dto);
        }

        return aggregatedTickets;
    }
}
