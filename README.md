# 🌐 CollabNet  
A structured and scalable database management system designed to streamline team collaboration, task management, and resource allocation within an organization. Built using PostgreSQL with complete normalization and referential integrity.

---

## 📚 Project Overview  
**CollabNet** is a relational database project built to reflect how modern organizations manage their departments, employees, tasks, events, and internal resources. It models real-world collaborative workflows, enabling efficient team coordination and central information tracking.

> “The aim was to build a fully normalized DBMS that captures enterprise-level interactions — from project planning and employee task allocation to event participation and feedback management.”

---

## 🛠️ Key Features  

- 🧱 **Fully normalized schema** (up to BCNF)  
- 📄 **17+ relational tables** with modular DDL  
- 🔐 **Referential integrity** via foreign keys and bridge tables  
- 🔍 **Supports complex SQL queries** (joins, filters, aggregations)  
- 📊 Includes detailed **ER Diagram** and **Relational Schema**  
- 🧪 Built and tested on **PostgreSQL** using **pgAdmin**  

---

## 🧾 Core Modules  

### 👥 Employee Management  
- Unique employee profiles with fields: name, DOB, contact, department, etc.  
- Tracks location, gender, availability, and designation  

### 🏢 Department & Role System  
- Departments linked to employees and projects  
- Role-based access through designation and hierarchy  

### 📂 Project & Task Allocation  
- Projects contain title, deadline, and budget  
- Tasks assigned under projects with details like start/end date, priority, status  
- Multiple employees can work on the same task  

### 📅 Events & Attendance  
- Internal events with title, schedule, and organizer info  
- Employee participation tracked through attendance logs  

### 🧑‍🏫 Feedback & Certificates  
- Feedback between employees with ratings and comments  
- Certification tracking with issuing authority, description, and issue date  

### 🧰 Resource & Skill Management  
- Resource catalog with tags and descriptions  
- Skills table linked to employees and projects  
- Tracks programming languages, tools, and soft skills  

---

## 📊 Data Model Snapshots  

### 📌 ER Diagram  
Visualizes entities like:  
`Employee`, `Project`, `Task`, `Event`, `Department`, `Feedback`, `Certificate`, `Skill`, `Resource`, etc.  
Includes many-to-many and one-to-many relationships using junction tables.

### 📌 Relational Schema  
Defines tables with fields, datatypes, and relationships. Ensures normalization through:  
- Primary/foreign keys  
- Composite keys for bridge tables (e.g., `Employee_Task`, `Department_Event`)  
- Avoids redundancy and update anomalies  

---

## 🔎 Example Use Cases  

- Assign a task to 3 employees across 2 departments  
- Track attendance for a company-wide event  
- Link a certificate to an employee and validate its issuer  
- Query all employees working on high-priority tasks in the last month  

---

