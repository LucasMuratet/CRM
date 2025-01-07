package fr.isen.projet.crm.resources;

import fr.isen.projet.crm.implementations.TicketActionServiceImpl;
import fr.isen.projet.crm.interfaces.models.TicketActionModel;
import fr.isen.projet.crm.interfaces.services.TicketActionService;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;

import java.util.ArrayList;
import java.util.List;

/**
 * Resource class for managing ticket actions via REST API.
 */
@Path("/action")
public class TicketActionResource {

    private final TicketActionService actionService;

    public TicketActionResource() {
        this.actionService = new TicketActionServiceImpl();
    }

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public List<TicketActionModel> getAllActions() {
        return new ArrayList<>(this.actionService.getAllActions());
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public TicketActionModel getActionById(@PathParam("id") String id) {
        return this.actionService.getActionById(id);
    }

    @POST
    public TicketActionModel addAction(TicketActionModel actionModel) {
        return this.actionService.addAction(actionModel);
    }

    @DELETE
    @Path("/{id}")
    public void deleteAction(@PathParam("id") String id) {
        this.actionService.deleteAction(id);
    }

    @PUT
    public TicketActionModel modifyAction(TicketActionModel actionModel) {
        return this.actionService.modifyAction(actionModel);
    }

    @GET
    @Path("/ticket/{ticketId}")
    @Produces({MediaType.APPLICATION_JSON})
    public List<TicketActionModel> getAllActionsByTicketId(@PathParam("ticketId") String ticketId) {
        return new ArrayList<>(this.actionService.getAllActionsByTicketId(ticketId));
    }
}
