package com.shippingcompany.controller;

import com.shippingcompany.dao.ClientDAO;
import com.shippingcompany.model.Client;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class ClientServlet extends HttpServlet {
    ClientDAO dao = new ClientDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("edit".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            Client client = dao.getClientById(id);
            request.setAttribute("client", client);
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/update-client.jsp");
            rd.forward(request, response);
        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            dao.deleteClient(id);
            response.sendRedirect("ClientServlet");
        } else if ("add".equals(action)) {
                RequestDispatcher rd = request.getRequestDispatcher("add-client.jsp");
                rd.forward(request, response);
        } else {
            List<Client> list = dao.getAllClients();
            request.setAttribute("clientList", list);
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view-clients.jsp");
            rd.forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String itemShipped = request.getParameter("itemShipped");
        String dateReceived = request.getParameter("dateReceived");
        String dateShipped = request.getParameter("dateShipped");
        String clientID = request.getParameter("clientID");

        Client c = new Client();
        c.setName(name);
        c.setContact(contact);
        c.setItemShipped(itemShipped);
        c.setDateReceived(dateReceived);
        c.setDateShipped(dateShipped);

        if (clientID == null || clientID.isEmpty()) {
            // Only check duplicates when adding
            if (dao.isNameExists(name)) {
                request.setAttribute("error", "Client Name Already Exists.");
                request.setAttribute("client", c);
                request.getRequestDispatcher("add-client.jsp").forward(request, response);
                return;
            }
            if (dao.isContactExists(contact)) {
                request.setAttribute("error", "Contact Already Exists.");
                request.setAttribute("client", c);
                request.getRequestDispatcher("add-client.jsp").forward(request, response);
                return;
            }
            dao.addClient(c);
        } else {
            c.setClientID(Integer.parseInt(clientID));
            dao.updateClient(c);
        }

        response.sendRedirect("ClientServlet");
    }

}