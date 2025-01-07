package fr.isen.projet.crm.implementations;

import fr.isen.projet.crm.interfaces.models.enums.REQUEST_TYPE;
import fr.isen.projet.crm.interfaces.models.enums.STATUS;
import fr.isen.projet.crm.interfaces.models.TicketClientModel;
import fr.isen.projet.crm.interfaces.models.enums.PRIORITY;
import fr.isen.projet.crm.interfaces.models.enums.SOURCE;
import fr.isen.projet.crm.interfaces.services.TicketService;
import io.agroal.api.AgroalDataSource;
import jakarta.enterprise.inject.spi.CDI;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TicketServiceImpl implements TicketService {

    AgroalDataSource dataSource = CDI.current().select(AgroalDataSource.class).get();

    @Override
    public List<TicketClientModel> getTickets() {
        List<TicketClientModel> tickets = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = dataSource.getConnection();
            String sql = "SELECT * FROM tickets";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                TicketClientModel ticket = new TicketClientModel(
                        rs.getString("uuid_ticket"),
                        rs.getString("uuid_client"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("comments"),
                        rs.getDate("date_created"),
                        rs.getDate("date_update"),
                        STATUS.valueOf(rs.getString("status")),
                        PRIORITY.valueOf(rs.getString("priority")),
                        REQUEST_TYPE.valueOf(rs.getString("request_type")),
                        SOURCE.valueOf(rs.getString("source"))
                );

                tickets.add(ticket);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving tickets", e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                throw new RuntimeException("Error closing resources", e);
            }
        }

        return tickets;
    }

    @Override
    public TicketClientModel getTicketById(String id) {
        String sql = "SELECT * FROM tickets WHERE uuid_ticket = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new TicketClientModel(
                            rs.getString("uuid_ticket"),
                            rs.getString("uuid_client"),
                            rs.getString("title"),
                            rs.getString("description"),
                            rs.getString("comments"),
                            rs.getDate("date_created"),
                            rs.getDate("date_update"),
                            STATUS.valueOf(rs.getString("status")),
                            PRIORITY.valueOf(rs.getString("priority")),
                            REQUEST_TYPE.valueOf(rs.getString("request_type")),
                            SOURCE.valueOf(rs.getString("source"))
                    );
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving ticket with ID: " + id, e);
        }
        return null; // Aucun ticket trouvé
    }

    @Override
    public TicketClientModel addTicket(TicketClientModel ticketModel) {
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = dataSource.getConnection();

            String sql = "INSERT INTO tickets (uuid_ticket, uuid_client, title, description, date_created, date_update, status, priority, request_type, comments, source) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);

            // Set parameters
            stmt.setString(1, ticketModel.uuid_ticket());
            stmt.setString(2, ticketModel.uuid_client());
            stmt.setString(3, ticketModel.title());
            stmt.setString(4, ticketModel.description());
            stmt.setDate(5, new java.sql.Date(ticketModel.date_created().getTime()));
            stmt.setDate(6, ticketModel.date_update() != null ? new java.sql.Date(ticketModel.date_update().getTime()) : null);
            stmt.setString(7, ticketModel.status().toString());
            stmt.setString(8, ticketModel.priority().toString());
            stmt.setString(9, ticketModel.request_type().toString());
            stmt.setString(10, ticketModel.comments());
            stmt.setString(11, ticketModel.source().toString());

            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error adding ticket", e);
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                throw new RuntimeException("Error closing resources", e);
            }
        }
        return ticketModel;
    }

    @Override
    public void deleteTicket(int id) {
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM tickets WHERE uuid_ticket = ?");
            stmt.setString(1, String.valueOf(id));

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected == 0) {
                throw new RuntimeException("Ticket with ID " + id + " not found.");
            }

            stmt.close();
            conn.close();

        } catch (SQLException e) {
            throw new RuntimeException("Error deleting ticket with ID " + id, e);
        }
    }

    @Override
    public TicketClientModel modifyTicket(TicketClientModel ticketModel) {
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = dataSource.getConnection();

            String sql = "UPDATE tickets SET title = ?, description = ?, date_update = ?, status = ?, priority = ?, request_type = ?, comments = ?, source = ? WHERE uuid_ticket = ?";
            stmt = conn.prepareStatement(sql);

            // Set parameters
            stmt.setString(1, ticketModel.title());
            stmt.setString(2, ticketModel.description());
            stmt.setDate(3, ticketModel.date_update() != null ? new java.sql.Date(ticketModel.date_update().getTime()) : null);
            stmt.setString(4, ticketModel.status().toString());
            stmt.setString(5, ticketModel.priority().toString());
            stmt.setString(6, ticketModel.request_type().toString());
            stmt.setString(7, ticketModel.comments());
            stmt.setString(8, ticketModel.source().toString());
            stmt.setString(9, ticketModel.uuid_ticket());

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected == 0) {
                throw new RuntimeException("Ticket with ID " + ticketModel.uuid_ticket() + " not found.");
            }

        } catch (SQLException e) {
            throw new RuntimeException("Error modifying ticket with ID " + ticketModel.uuid_ticket(), e);
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                throw new RuntimeException("Error closing resources", e);
            }
        }
        return ticketModel;
    }
}
