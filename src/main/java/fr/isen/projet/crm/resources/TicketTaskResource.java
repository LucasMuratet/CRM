package fr.isen.projet.crm.resources;

import fr.isen.projet.crm.implementations.TicketTaskServiceImpl;
import fr.isen.projet.crm.interfaces.models.TicketTaskModel;
import fr.isen.projet.crm.interfaces.services.TicketTaskService;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;

import java.util.ArrayList;
import java.util.List;

/**
 * Resource class for managing ticket tasks via REST API.
 */
@Path("/task")
public class TicketTaskResource {

    private final TicketTaskService taskService;

    public TicketTaskResource() {
        this.taskService = new TicketTaskServiceImpl();
    }

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public List<TicketTaskModel> getAllTasks() {
        return new ArrayList<>(this.taskService.getAllTasks());
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public TicketTaskModel getTaskById(@PathParam("id") String id) {
        return this.taskService.getTaskById(id);
    }

    @POST
    public TicketTaskModel addTask(TicketTaskModel taskModel) {
        return this.taskService.addTask(taskModel);
    }

    @DELETE
    @Path("/{id}")
    public void deleteTask(@PathParam("id") String id) {
        this.taskService.deleteTask(id);
    }

    @PUT
    public TicketTaskModel modifyTask(TicketTaskModel taskModel) {
        return this.taskService.modifyTask(taskModel);
    }

    @GET
    @Path("/ticket/{ticketId}")
    @Produces({MediaType.APPLICATION_JSON})
    public List<TicketTaskModel> getAllTasksByTicketId(@PathParam("ticketId") String ticketId) {
        return new ArrayList<>(this.taskService.getAllTasksByTicketId(ticketId));
    }
}
