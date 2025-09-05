# 🌐 CollabNet
*A comprehensive DBMS project to power organizational collaboration — enabling companies to manage employees, projects, events, and policies efficiently.*

---

## 📚 Project Overview
CollabNet is a **relational database system** designed for modern organizational management. It centralizes HR operations, project tracking, event coordination, and policy compliance through a well-structured and normalized schema.

The system serves as a unified platform for:

- **👥 Employee Management** — staff hierarchies, team assignments, and performance tracking  
- **🏢 Departments & Teams** — workforce organization with budgets, leadership, and communication channels  
- **📊 Project Lifecycle** — budgets, timelines, resources, and deliverables across teams  
- **📅 Event Coordination** — meetings, conferences, product launches, and team activities  
- **📋 Policy Management** — approval workflows, document control, and compliance tracking  
- **📚 Resource Library** — PDFs, code repositories, documentation, and reference materials  

> **Objective:** Build a scalable, enterprise-ready database supporting **employee hierarchies, project tracking, and policy compliance** through **BCNF-level normalization** and robust referential integrity.

---

## 🛠️ Key Features
- 🧱 **Fully normalized schema** (up to BCNF) with 26+ tables  
- 📄 **Comprehensive DDL** covering employee, project, event, and policy modules  
- ⚙️ **Referential integrity** via foreign keys and cascading rules  
- 🔍 **Sample data** with 20+ realistic records per table for testing  
- 📊 **ER Diagram & Relational Schema** for clear visualization  
- 🧪 **PostgreSQL tested** with support for global employee distribution  

---

## 📊 ER Diagram
Here’s the system ER diagram showing entity relationships:

![ER Diagram](./ER_diagram.svg)

---

## 🗂 Relational Schema
Here’s the system relational diagram:

![Relational Diagram](./Relational_Diagram.svg)

---

## 🧾 Use Case Highlights
### 👥 Application Users
- **Employees & Managers** – Create profiles, track performance, manage teams, and coordinate projects  
- **Departments & Teams** – Organize workflows, allocate budgets, and maintain communication channels  
- **HR & Admin** – Handle recruitment, policy compliance, event planning, and resource management  

### 🔎 Core Functionalities
- **Employee Registration & Hierarchy** – Unique employee ID with personal details, team assignments, reporting structure  
- **Department & Team Structure** – Organizational units with budgets, leadership, and communication channels  
- **Project Management** – Complete lifecycle tracking with budgets, timelines, resources, and team assignments  
- **Event Coordination** – Company events, meetings, conferences with team invitations and scheduling  
- **Policy & Compliance** – Document management, approval workflows, and compliance tracking  
- **Resource Management** – Multi-type resources (PDFs, Git repos, software) with project linkage  
- **Communication Integration** – Multi-platform channels (Slack, Teams, Email) for team collaboration  

---

## 🚀 Setup

```bash
# Clone the repository
git clone https://github.com/ajaychovatiya307/CollabNet.git
cd CollabNet

# Create schema
psql -U username -d database -f DDL_Script.sql

# Load sample data
psql -U username -d database -f Data_Insertion_Script.sql
