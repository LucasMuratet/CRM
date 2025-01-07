package fr.isen.projet.crm.implementations;

import fr.isen.projet.crm.interfaces.models.TicketTaskModel;
import fr.isen.projet.crm.interfaces.services.TicketTaskService;
import io.agroal.api.AgroalDataSource;
import jakarta.enterprise.inject.spi.CDI;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TicketTaskServiceImpl implements TicketTaskService {

    AgroalDataSource dataSource = CDI.current().select(AgroalDataSource.class).get();

    @Override
    public List<TicketTaskModel> getAllTasks() {
        List<TicketTaskModel> tasks = new ArrayList<>();
        String sql = "SELECT * FROM ticket_tasks";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                tasks.add(new TicketTaskModel(
                        rs.getString("uuid_task"),
                        rs.getString("ticket"),
                        rs.getDate("date_reminder"),
                        rs.getString("description"),
                        rs.getString("uuid_user")
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving tasks", e);
        }
        return tasks;
    }

    @Override
    public List<TicketTaskModel> getAllTasksByTicketId(String ticketId) {
        List<TicketTaskModel> tasks = new ArrayList<>();
        String sql = "SELECT * FROM ticket_tasks WHERE ticket = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, ticketId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    tasks.add(new TicketTaskModel(
                            rs.getString("uuid_task"),
                            rs.getString("ticket"),
                            rs.getDate("date_reminder"),
                            rs.getString("description"),
                            rs.getString("uuid_user")
                    ));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving tasks for ticket ID: " + ticketId, e);
        }
        return tasks;
    }

    @Override
    public TicketTaskModel getTaskById(String id) {
        String sql = "SELECT * FROM ticket_tasks WHERE uuid_task = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new TicketTaskModel(
                            rs.getString("uuid_task"),
                            rs.getString("ticket"),
                            rs.getDate("date_reminder"),
                            rs.getString("description"),
                            rs.getString("uuid_user")
                    );
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving task with ID: " + id, e);
        }
        return null; // Aucun résultat trouvé
    }

    @Override
    public TicketTaskModel addTask(TicketTaskModel taskModel) {
        String sql = "INSERT INTO ticket_tasks (uuid_task, ticket, date_reminder, description, uuid_user) "
                + "VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, taskModel.uuid_task());
            stmt.setString(2, taskModel.ticket());
            stmt.setDate(3, new java.sql.Date(taskModel.date_reminder().getTime()));
            stmt.setString(4, taskModel.description());
            stmt.setString(5, taskModel.uuid_user());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error adding task", e);
        }
        return taskModel;
    }

    @Override
    public TicketTaskModel modifyTask(TicketTaskModel taskModel) {
        String sql = "UPDATE ticket_tasks SET ticket = ?, date_reminder = ?, description = ?, uuid_user = ? "
                + "WHERE uuid_task = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, taskModel.ticket());
            stmt.setDate(2, new java.sql.Date(taskModel.date_reminder().getTime()));
            stmt.setString(3, taskModel.description());
            stmt.setString(4, taskModel.uuid_user());
            stmt.setString(5, taskModel.uuid_task());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error modifying task with ID: " + taskModel.uuid_task(), e);
        }
        return taskModel;
    }

    @Override
    public void deleteTask(String id) {
        String sql = "DELETE FROM ticket_tasks WHERE uuid_task = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, id);
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected == 0) {
                throw new RuntimeException("Task with ID " + id + " not found.");
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting task with ID " + id, e);
        }
    }
}
