package fr.isen.projet.crm.resources;

import fr.isen.projet.crm.implementations.StatusServiceImpl;
import fr.isen.projet.crm.interfaces.services.StatusService;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import com.fasterxml.jackson.core.JsonProcessingException;

@Path("/status")
public class StatusResource {

    private final StatusService statusService;


    public StatusResource() {
        this.statusService = new StatusServiceImpl();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getStatus() throws JsonProcessingException {
        return this.statusService.getStatus();
    }
}
