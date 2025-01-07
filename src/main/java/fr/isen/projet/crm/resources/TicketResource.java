package fr.isen.projet.crm.resources;

import fr.isen.projet.crm.implementations.TicketServiceImpl;
import fr.isen.projet.crm.interfaces.services.TicketService;
import fr.isen.projet.crm.interfaces.models.TicketClientModel;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;

import java.util.ArrayList;
import java.util.List;

/**
 * Resource class for managing tickets via REST API.
 */
@Path("/ticket")
public class TicketResource {

    private final TicketService ticketService;

    public TicketResource() {
        this.ticketService = new TicketServiceImpl();
    }

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public List<TicketClientModel> getAllTickets() {
        return new ArrayList<>(this.ticketService.getTickets());
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public TicketClientModel getTicketById(@jakarta.ws.rs.PathParam("id") String id) {
        return this.ticketService.getTicketById(id);
    }



    @POST
    public TicketClientModel addTicket(TicketClientModel ticketModel) {
        return this.ticketService.addTicket(ticketModel);
    }

    @DELETE
    @Path("/{id}")
    public void deleteTicket(@jakarta.ws.rs.PathParam("id") int id) {
        this.ticketService.deleteTicket(id);
    }

    @PUT
    public TicketClientModel modifyTicket(TicketClientModel ticketModel) {
        return this.ticketService.modifyTicket(ticketModel);
    }
}
