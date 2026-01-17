Create Database ShippingRecords;
USE ShippingRecords;

CREATE TABLE clients (
    ClientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) UNIQUE,
    Contact VARCHAR(20) UNIQUE,
    ItemShipped VARCHAR(200),
    Date_Received DATE,
    Date_Shipped DATE
);

INSERT INTO clients (Name, Contact, ItemShipped, Date_Received, Date_Shipped) VALUES
('Alice Brown', 'alice@example.com', 'Books', '2025-04-01', '2025-04-02'),
('Bob Smith', 'bob@example.com', 'Laptop', '2025-04-03', '2025-04-04'),
('Clara Johnson', 'clara@example.com', 'Clothes', '2025-04-05', '2025-04-06'),
('David Lee', 'david@example.com', 'Phone', '2025-04-07', '2025-04-08'),
('Eva Chen', 'eva@example.com', 'Camera', '2025-04-09', '2025-04-10');

select * from clients;