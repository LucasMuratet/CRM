package fr.isen.projet.crm.resources;

import fr.isen.projet.crm.implementations.TicketServiceImpl;
import fr.isen.projet.crm.interfaces.models.enums.PRIORITY;
import fr.isen.projet.crm.interfaces.models.enums.REQUEST_TYPE;
import fr.isen.projet.crm.interfaces.models.enums.SOURCE;
import fr.isen.projet.crm.interfaces.models.enums.STATUS;
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
        return new ArrayList<>(this.ticketService.getAllTickets());
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public TicketClientModel getTicketById(@PathParam("id") String id) {
        return this.ticketService.getTicketById(id);
    }

    @POST
    public TicketClientModel addTicket(TicketClientModel ticketModel) {
        return this.ticketService.addTicket(ticketModel);
    }

    @DELETE
    @Path("/{id}")
    public void deleteTicket(@PathParam("id") String id) {
        this.ticketService.deleteTicket(id);
    }

    @PUT
    public TicketClientModel modifyTicket(TicketClientModel ticketModel) {
        return this.ticketService.modifyTicket(ticketModel);
    }

    @PUT
    @Path("/status/{id}")
    public TicketClientModel modifyStatus(@PathParam("id") String id, STATUS status) {
        return this.ticketService.modifyStatus(id, status);
    }

    @GET
    @Path("/user/{userId}/all")
    @Produces({MediaType.APPLICATION_JSON})
    public List<TicketClientModel> getAllTicketsByUserId(@PathParam("userId") String userId) {
        return new ArrayList<>(this.ticketService.getAllTicketsByUserId(userId));
    }

    @GET
    @Path("/search")
    @Produces(MediaType.APPLICATION_JSON)
    public List<TicketClientModel> searchTickets(
            @QueryParam("status") STATUS status,
            @QueryParam("priority") PRIORITY priority,
            @QueryParam("source") SOURCE source,
            @QueryParam("requestType") REQUEST_TYPE requestType,
            @QueryParam("title") String title,
            @QueryParam("description") String description,
            @QueryParam("dateCreatedAfter") String dateCreatedAfter,
            @QueryParam("dateCreatedBefore") String dateCreatedBefore
    ) {
        return this.ticketService.searchTickets(status, priority, source, requestType, title, description, dateCreatedAfter, dateCreatedBefore);
    }
}