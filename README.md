# hass-healthcare-db-system
A relational database system for managing healthcare appointments, billing, and medical records. Designed with MySQL and focused on data security and role-based access control.
# Healthcare Appointment Scheduling System (HASS)

This project is a database design and implementation for a Healthcare Appointment Scheduling System (HASS). It is developed as part of an MSc Computer Science coursework on **Database Management and Analysis**.

---

## 🏥 Project Overview

- **Purpose:** Manage appointments, medical records, billing, feedback, and notifications in a healthcare setting.
- **Technology Used:** MySQL, SQL, XAMPP
- **Design Model:** Enhanced Entity-Relationship Diagram (EERD)
- **Features:**
  - Secure role-based access control
  - Normalized relational schema
  - Interactive SQL queries for analytics
  - Healthcare-specific assumptions for practical implementation

---

## 🗂️ Project Structure

├── EERD.png or .drawio # Diagram of the Enhanced ER model (optional)
├── schema.sql # SQL DDL script for table creation
├── populate.sql # SQL script to populate tables with sample data
├── interactive_queries.sql # SQL script for advanced SELECT queries
├── role_security.sql # Role-based access control (GRANT statements)
├── HASS_Documentation.pdf # Full documentation/report (from coursework)
├── README.md # This file

markdown
Copy
Edit

---

## 🧱 Core Tables

- `Person` (supertype for `Patient` and `Staff`)
- `Appointment`
- `Billing`
- `Diagnoses`
- `MedicalRecords`
- `Test_result`
- `Notification`
- `UserRole` and `UserRoleNotification`
- `Feedback`
- `Doctor`, `Patient`, `Staff` (subtypes/entities)

---

## 🧮 Sample SQL Queries

- Appointments per doctor
- Feedback rating counts
- Total billing summaries
- Staff count per role
- Doctor with most appointments

See `interactive_queries.sql` for full examples.

---

## 🔐 Role-Based Access Control

Implemented using SQL GRANT statements:
- **Admin**: Full access
- **Receptionist**: Appointments + Person table
- **Doctor**: Appointments, Diagnoses, Test Results
- **Pharmacist**: View-only access to prescriptions
- **Billing Officer**: Billing + basic patient details
- **Lab Technician**: Access to Test Results only

See `role_security.sql` for implementation.

---

## 🛠️ How to Run Locally

1. Install **XAMPP** or any MySQL server.
2. Import `schema.sql` into your MySQL DBMS.
3. Run `populate.sql` to add test data.
4. Optionally, run:
   - `interactive_queries.sql` for analytics
   - `role_security.sql` to set up users and privileges

---

## 🎯 Key Takeaways

- Designed for a **realistic healthcare workflow**
- Emphasizes **data integrity**, **normalization**, and **security**
- Suitable for academic and practical use

---

## 👤 Author

- **Victor Shedu**
- MSc Computer Science – Birmingham City University  
- GitHub: [kodercoded](https://github.com/kodercoded)

---

## 📄 License

This project is part of academic coursework. For educational purposes only. Contact the author for permission to reuse.
