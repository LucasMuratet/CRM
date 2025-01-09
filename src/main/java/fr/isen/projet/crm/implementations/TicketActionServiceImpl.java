package fr.isen.projet.crm.implementations;

import fr.isen.projet.crm.interfaces.models.TicketActionModel;
import fr.isen.projet.crm.interfaces.models.enums.ACTION_TYPE;
import fr.isen.projet.crm.interfaces.services.TicketActionService;
import io.agroal.api.AgroalDataSource;
import jakarta.enterprise.inject.spi.CDI;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import java.util.UUID;

public class TicketActionServiceImpl implements TicketActionService {

    AgroalDataSource dataSource = CDI.current().select(AgroalDataSource.class).get();

    @Override
    public List<TicketActionModel> getAllActions() {
        List<TicketActionModel> actions = new ArrayList<>();
        String sql = "SELECT * FROM ticket_actions";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                actions.add(new TicketActionModel(
                        rs.getString("uuid_action"),
                        rs.getString("ticket"),
                        rs.getDate("date_action"),
                        ACTION_TYPE.valueOf(rs.getString("action_type")),
                        rs.getString("description"),
                        rs.getString("uuid_user")
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving actions", e);
        }
        return actions;
    }

    @Override
    public List<TicketActionModel> getAllActionsByTicketId(String ticketId) {
        List<TicketActionModel> actions = new ArrayList<>();
        String sql = "SELECT * FROM ticket_actions WHERE ticket = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, ticketId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    actions.add(new TicketActionModel(
                            rs.getString("uuid_action"),
                            rs.getString("ticket"),
                            rs.getDate("date_action"),
                            ACTION_TYPE.valueOf(rs.getString("action_type")),
                            rs.getString("description"),
                            rs.getString("uuid_user")
                    ));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving actions for ticket ID: " + ticketId, e);
        }
        return actions;
    }

    @Override
    public TicketActionModel getActionById(String id) {
        String sql = "SELECT * FROM ticket_actions WHERE uuid_action = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new TicketActionModel(
                            rs.getString("uuid_action"),
                            rs.getString("ticket"),
                            rs.getDate("date_action"),
                            ACTION_TYPE.valueOf(rs.getString("action_type")),
                            rs.getString("description"),
                            rs.getString("uuid_user")
                    );
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving action with ID: " + id, e);
        }
        return null;
    }

    public TicketActionModel addAction(TicketActionModel actionModel) {
        String uuid_action = UUID.randomUUID().toString();

        String sql = "INSERT INTO ticket_actions (uuid_action, ticket, date_action, action_type, description, uuid_user) "
                + "VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, uuid_action);
            stmt.setString(2, actionModel.ticket());
            stmt.setDate(3, new java.sql.Date(actionModel.date_action().getTime()));
            stmt.setString(4, actionModel.action_type().toString());
            stmt.setString(5, actionModel.description());
            stmt.setString(6, actionModel.uuid_user());

            stmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Error adding action", e);
        }

        return new TicketActionModel(
                uuid_action,
                actionModel.ticket(),
                actionModel.date_action(),
                actionModel.action_type(),
                actionModel.description(),
                actionModel.uuid_user()
        );
    }

    @Override
    public TicketActionModel modifyAction(TicketActionModel actionModel) {
        String sql = "UPDATE ticket_actions SET ticket = ?, date_action = ?, action_type = ?, description = ?, uuid_user = ? "
                + "WHERE uuid_action = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, actionModel.ticket());
            stmt.setDate(2, new java.sql.Date(actionModel.date_action().getTime()));
            stmt.setString(3, actionModel.action_type().toString());
            stmt.setString(4, actionModel.description());
            stmt.setString(5, actionModel.uuid_user());
            stmt.setString(6, actionModel.uuid_action());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error modifying action with ID: " + actionModel.uuid_action(), e);
        }
        return actionModel;
    }

    @Override
    public void deleteAction(String id) {
        String sql = "DELETE FROM ticket_actions WHERE uuid_action = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, id);
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected == 0) {
                throw new RuntimeException("Action with ID " + id + " not found.");
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting action with ID " + id, e);
        }
    }
}
