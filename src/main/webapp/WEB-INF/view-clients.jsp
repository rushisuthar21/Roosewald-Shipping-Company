<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, com.shippingcompany.model.Client" %>
<html>
<head>
  <title>View Clients</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
  <style>
    .fade-in {
      animation: fadeIn 0.8s ease-in;
    }
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body class="p-4 bg-light">
  <div class="container fade-in">
    <h2 class="mb-4 text-primary"><i class="fa-solid fa-users"></i> Client Records</h2>
    <a href="add-client.jsp" class="btn btn-success mb-3"><i class="fa-solid fa-user-plus"></i> Add New Client</a>
    <a href="index.jsp" class="btn btn-secondary mb-3 float-end"><i class="fa-solid fa-arrow-left"></i> Back to Dashboard</a>

    <table class="table table-bordered shadow-sm bg-white">
      <thead class="table-dark">
        <tr>
          <th>ID</th><th>Name</th><th>Contact</th><th>Item</th><th>Received</th><th>Shipped</th><th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <%
        @SuppressWarnings("unchecked")
        List<Client> clients = (List<Client>) request.getAttribute("clientList");
        if (clients != null && !clients.isEmpty()) {
          for(Client c : clients){
        %>
        <tr>
          <td><%= c.getClientID() %></td>
          <td><%= c.getName() %></td>
          <td><%= c.getContact() %></td>
          <td><%= c.getItemShipped() %></td>
          <td><%= c.getDateReceived() %></td>
          <td><%= c.getDateShipped() %></td>
          <td>
            <a href="ClientServlet?action=edit&id=<%=c.getClientID()%>" class="btn btn-primary btn-sm">
              <i class="fa-solid fa-pen-to-square"></i>
            </a>
            <a href="ClientServlet?action=delete&id=<%=c.getClientID()%>" class="btn btn-danger btn-sm">
              <i class="fa-solid fa-trash"></i>
            </a>
          </td>
        </tr>
        <%
          }
        } else {
        %>
        <tr>
          <td colspan="7" class="text-center text-muted">No client records found.</td>
        </tr>
        <% } %>
      </tbody>
    </table>
  </div>
</body>
</html>
