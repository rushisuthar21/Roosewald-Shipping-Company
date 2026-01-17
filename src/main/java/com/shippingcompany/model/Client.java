package com.shippingcompany.model;

public class Client {
    private int clientID;
    private String name;
    private String contact;
    private String itemShipped;
    private String dateReceived;
    private String dateShipped;

    // Getters & Setters
    public int getClientID() { return clientID; }
    public void setClientID(int clientID) { this.clientID = clientID; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getContact() { return contact; }
    public void setContact(String contact) { this.contact = contact; }

    public String getItemShipped() { return itemShipped; }
    public void setItemShipped(String itemShipped) { this.itemShipped = itemShipped; }

    public String getDateReceived() { return dateReceived; }
    public void setDateReceived(String dateReceived) { this.dateReceived = dateReceived; }

    public String getDateShipped() { return dateShipped; }
    public void setDateShipped(String dateShipped) { this.dateShipped = dateShipped; }
}
