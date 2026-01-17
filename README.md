# 🚢 Shipping Company Client Records Management System

A Java-based web application built using **JSP, Servlets, JDBC, and Bootstrap** to manage shipping company client records.  
The application supports full **CRUD (Create, Read, Update, Delete)** functionality and follows the **MVC architecture**.

---

## 📌 Project Description

The **Shipping Company Client Records Management System** is designed to help a shipping company efficiently manage its client shipment records.  
Users can add new clients, view existing records, update shipment details, and delete records as required.

The application uses **JSP pages for the frontend**, **Servlets for request handling**, and **JDBC with DAO pattern** for database operations.  
Bootstrap is used to create a clean, modern, and responsive user interface.

---

## 🛠️ Technologies Used

- Java (JDK 8 or higher)
- JSP (JavaServer Pages)
- Servlets
- JDBC (DAO Pattern)
- MySQL Database
- Bootstrap 5
- HTML5 & CSS3
- Apache Tomcat Server

---

## 🗄️ Database Information

- **Database Name:** `ShippingRecords`
- **Table Name:** `clients`

### Table Structure

| Column Name    | Data Type | Description |
|---------------|----------|-------------|
| ClientID      | INT (PK) | Unique client ID |
| Name          | VARCHAR  | Client name |
| Contact       | VARCHAR  | Phone or email |
| ItemShipped   | VARCHAR  | Item shipped |
| Date_Received | DATE     | Date received |
| Date_Shipped  | DATE     | Date shipped |

The database contains **5–6 pre-inserted records** for testing and demonstration.

---

## ⚙️ Application Features (CRUD Operations)

### ✅ View Client Records (Read)
- Displays all client records in a Bootstrap-styled table
- Shows shipment and contact details
- Includes Update and Delete buttons for each record

### ➕ Add New Client (Create)
- Form-based interface to add new client details
- Data is saved to the database using Servlets and DAO

### ✏️ Update Client Record (Update)
- Edit existing client information
- Pre-filled form for easy modification

### 🗑️ Delete Client Record (Delete)
- Delete client records directly from the table
- Database updates immediately

---

## 🧱 Project Architecture (MVC)

### Model
- Java Bean (`Client.java`)
- Represents the `clients` table
- Contains fields, getters, setters, and constructors

### DAO (Data Access Object)
- Handles all database operations
- Separate methods for:
  - Fetching records
  - Inserting data
  - Updating data
  - Deleting data

### Controller
- Servlets process HTTP requests
- Communicate between JSP views and DAO layer

### View
- JSP pages styled using Bootstrap
- Responsive and user-friendly UI

---

## 📷 Screenshots

Screenshots included in the repository:
- Home Page
<img width="1920" height="1080" alt="Screenshot (285)" src="https://github.com/user-attachments/assets/28cef7e6-2597-46cf-bb93-7fbc5453b720" />
<img width="1920" height="1080" alt="Screenshot (286)" src="https://github.com/user-attachments/assets/8c0000e6-c21c-4efa-aff5-6a0b788c2087" />

- View Clients Page
<img width="1920" height="1080" alt="Screenshot (288)" src="https://github.com/user-attachments/assets/1bf0fe1c-b8fe-4691-8983-8d05fd8d75c7" />

- Add New Client Page
<img width="1920" height="1080" alt="Screenshot (289)" src="https://github.com/user-attachments/assets/0f7476a8-401e-45da-9027-cba9ff96928d" />

- Contact Us Page
<img width="1920" height="1080" alt="Screenshot (287)" src="https://github.com/user-attachments/assets/460b242b-214f-4439-8284-fa372bce73ca" />


## ▶️ How to Run the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   Import the project into Eclipse or IntelliJ IDEA

2. Configure Apache Tomcat Server

3. Create the MySQL database and table

4.Update database credentials in the DAO class

5. Run the project on Tomcat

🎯 Conclusion: This project demonstrates a complete Java web application using JSP, Servlets, JDBC, and Bootstrap. It fulfills all CRUD requirements and follows clean coding practices using MVC and DAO patterns.

👤 Author: Rushi Suthar
