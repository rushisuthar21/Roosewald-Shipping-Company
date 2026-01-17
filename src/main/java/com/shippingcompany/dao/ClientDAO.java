package com.shippingcompany.dao;

import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import com.shippingcompany.config.DBConfig;
import com.shippingcompany.model.Client;

public class ClientDAO {
    JdbcTemplate template = new JdbcTemplate(DBConfig.getDataSource());

    public List<Client> getAllClients() {
        String sql = "SELECT * FROM clients";
        return template.query(sql, new BeanPropertyRowMapper<>(Client.class));
    }

    public void addClient(Client c) {
        String sql = "INSERT INTO clients (Name, Contact, ItemShipped, Date_Received, Date_Shipped) VALUES (?, ?, ?, ?, ?)";
        template.update(sql, c.getName(), c.getContact(), c.getItemShipped(), c.getDateReceived(), c.getDateShipped());
    }

    public void updateClient(Client c) {
        String sql = "UPDATE clients SET Name=?, Contact=?, ItemShipped=?, Date_Received=?, Date_Shipped=? WHERE ClientID=?";
        template.update(sql, c.getName(), c.getContact(), c.getItemShipped(), c.getDateReceived(), c.getDateShipped(), c.getClientID());
    }

    public void deleteClient(int id) {
        String sql = "DELETE FROM clients WHERE ClientID=?";
        template.update(sql, id);
    }

    @SuppressWarnings("deprecation")
	public Client getClientById(int id) {
        String sql = "SELECT * FROM clients WHERE ClientID=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Client.class));
    }
    
    public boolean isNameExists(String name) {
        String sql = "SELECT COUNT(*) FROM clients WHERE name = ?";
        Integer count = template.queryForObject(sql, new Object[]{name}, Integer.class);
        return count != null && count > 0;
    }

    public boolean isContactExists(String contact) {
        String sql = "SELECT COUNT(*) FROM clients WHERE contact = ?";
        Integer count = template.queryForObject(sql, new Object[]{contact}, Integer.class);
        return count != null && count > 0;
    }

}
