-- ========================================================
-- CollabNet Database Schema (PostgreSQL)
-- Purpose: Collaboration, HR, Projects, Events, and Policies
-- ========================================================

DROP SCHEMA IF EXISTS CollabNet CASCADE;
CREATE SCHEMA CollabNet;
SET SEARCH_PATH TO CollabNet;

-- =========================
-- Core Entities
-- =========================

CREATE TABLE Events (
    Event_Id     INT PRIMARY KEY,
    Name         VARCHAR(100),
    Date         DATE,
    Time         TIME,
    Street       VARCHAR(100),
    City         VARCHAR(50),
    State        VARCHAR(50),
    Country      VARCHAR(50),
    Pin          VARCHAR(10),
    Link         VARCHAR(200),
    Agenda       TEXT,
    Recurrence   VARCHAR(50)
);

CREATE TABLE Employee (
    Emp_Id        INT PRIMARY KEY,
    FirstName     VARCHAR(50),
    MiddleName    VARCHAR(50),
    LastName      VARCHAR(50),
    DOB           DATE,
    Gender        VARCHAR(10),
    Street        VARCHAR(100),
    City          VARCHAR(50),
    State         VARCHAR(50),
    Country       VARCHAR(50),
    Pin           VARCHAR(10),
    Availability  VARCHAR(20),
    Team_Id       INT, -- Linked later
    Contact_Id    INT REFERENCES Employee(Emp_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Lead_Id       INT REFERENCES Employee(Emp_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Review_Id     INT REFERENCES Employee(Emp_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    WorkingEmail  VARCHAR(100) UNIQUE,
    PersonalEmail VARCHAR(100) UNIQUE
);

CREATE TABLE Communication_Channel (
    Channel_Id  INT PRIMARY KEY,
    Type        VARCHAR(50),
    Creator_Id  INT REFERENCES Employee(Emp_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Project_Id  INT -- Linked later
);

CREATE TABLE Department (
    Dep_Id      INT PRIMARY KEY,
    Name        VARCHAR(100),
    Description TEXT,
    Budget      DECIMAL(12,2),
    Leader_Id   INT REFERENCES Employee(Emp_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Channel_Id  INT REFERENCES Communication_Channel(Channel_Id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Lead_By (
    LeadBy_Id   INT PRIMARY KEY,
    Dep_Id      INT REFERENCES Department(Dep_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Leader_Id   INT REFERENCES Employee(Emp_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Channel_Id  INT REFERENCES Communication_Channel(Channel_Id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Team (
    Team_Id        INT PRIMARY KEY,
    AreaOfWorking  VARCHAR(100),
    TeamEmail      VARCHAR(100) UNIQUE,
    Leader_Id      INT REFERENCES Employee(Emp_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Channel_Id     INT REFERENCES Communication_Channel(Channel_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Department_Id  INT REFERENCES Department(Dep_Id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Project (
    Project_Id    INT PRIMARY KEY,
    Name          VARCHAR(100),
    StartDate     DATE,
    DueDate       DATE,
    Status        VARCHAR(50),
    Budget        DECIMAL(12,2),
    Objective     TEXT,
    Department_Id INT REFERENCES Department(Dep_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Team_Id       INT REFERENCES Team(Team_Id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- =========================
-- HR & Collaboration
-- =========================

CREATE TABLE Feedback (
    Feedback_Id  INT PRIMARY KEY,
    Emp_Id       INT REFERENCES Employee(Emp_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Title        VARCHAR(255) NOT NULL,
    Description  TEXT
);

CREATE TABLE FeedbackTags (
    Feedback_Id  INT REFERENCES Feedback(Feedback_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Tag          VARCHAR(100),
    PRIMARY KEY (Feedback_Id, Tag)
);

CREATE TABLE Resume (
    Emp_Id           INT PRIMARY KEY REFERENCES Employee(Emp_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    EducationHistory TEXT,
    WorkExperience   TEXT,
    TechnicalSkills  TEXT
);

CREATE TABLE Tracking (
    Emp_Id     INT REFERENCES Employee(Emp_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Project_Id INT REFERENCES Project(Project_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Update     TEXT,
    Time       TIME,
    Date       DATE,
    PRIMARY KEY (Emp_Id, Project_Id)
);

CREATE TABLE Invoice (
    Invoice_Id     INT PRIMARY KEY,
    Emp_Id         INT REFERENCES Employee(Emp_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Status         VARCHAR(50),
    DueDate        DATE,
    Taxes          DECIMAL(10,2),
    PaymentMethod  VARCHAR(50),
    Notes          TEXT
);

-- =========================
-- Resources
-- =========================

CREATE TABLE Resource (
    Resource_Id INT PRIMARY KEY,
    Project_Id  INT REFERENCES Project(Project_Id) ON DELETE SET NULL ON UPDATE CASCADE,
    Name        VARCHAR(100)
);

CREATE TABLE Pdf (
    Resource_Id INT PRIMARY KEY REFERENCES Resource(Resource_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Pages       INT,
    Description TEXT,
    Tags        VARCHAR(255)
);

CREATE TABLE GitRepository (
    Resource_Id   INT PRIMARY KEY REFERENCES Resource(Resource_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    NumberOfFiles INT
);

CREATE TABLE Software (
    Resource_Id INT PRIMARY KEY REFERENCES Resource(Resource_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Size        VARCHAR(20)
);

CREATE TABLE Code (
    Resource_Id  INT PRIMARY KEY REFERENCES Resource(Resource_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Language     VARCHAR(50),
    Description  TEXT,
    Comments     TEXT
);

-- =========================
-- Policies
-- =========================

CREATE TABLE Policy (
    Policy_Id      INT PRIMARY KEY,
    Title          VARCHAR(100) UNIQUE,
    Description    TEXT,
    EffectiveDate  DATE,
    DueDate        DATE,
    RevisionDate   DATE,
    ApprovalStatus VARCHAR(50),
    Department_Id  INT REFERENCES Department(Dep_Id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE PolicyDocuments (
    Policy_Id     INT REFERENCES Policy(Policy_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    DocumentPath  VARCHAR(255) NOT NULL,
    PRIMARY KEY (Policy_Id, DocumentPath)
);

-- =========================
-- Events Extensions
-- =========================

CREATE TABLE ProductLaunch (
    Event_Id  INT PRIMARY KEY REFERENCES Events(Event_Id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Conferences (
    Event_Id     INT PRIMARY KEY REFERENCES Events(Event_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Description  TEXT
);

CREATE TABLE LaunchLeaders (
    Event_Id     INT REFERENCES ProductLaunch(Event_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    LeaderName   VARCHAR(100),
    PRIMARY KEY (Event_Id, LeaderName)
);

CREATE TABLE Invited (
    Team_Id       INT REFERENCES Team(Team_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Event_Id      INT REFERENCES Events(Event_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    ReminderDate  DATE,
    PRIMARY KEY (Team_Id, Event_Id)
);

-- =========================
-- References
-- =========================

CREATE TABLE Reference (
    Reference_Id INT PRIMARY KEY,
    Name         VARCHAR(255) NOT NULL,
    Description  TEXT,
    Category     VARCHAR(100),
    Author       VARCHAR(255),
    Link         VARCHAR(500),
    Rating       DECIMAL(5,2)
);

CREATE TABLE ReferenceKeywords (
    Reference_Id INT REFERENCES Reference(Reference_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Keyword      VARCHAR(100) NOT NULL,
    PRIMARY KEY (Reference_Id, Keyword)
);

CREATE TABLE External (
    Team_Id      INT REFERENCES Team(Team_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Reference_Id INT REFERENCES Reference(Reference_Id) ON DELETE CASCADE ON UPDATE CASCADE,
    Accessible   BOOLEAN,
    PRIMARY KEY (Team_Id, Reference_Id)
);

-- =========================
-- Resolve Cyclic Dependencies
-- =========================

ALTER TABLE Employee
    ADD CONSTRAINT fk_employee_team
    FOREIGN KEY (Team_Id) REFERENCES Team(Team_Id)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE Communication_Channel
    ADD CONSTRAINT fk_channel_project
    FOREIGN KEY (Project_Id) REFERENCES Project(Project_Id)
    ON DELETE SET NULL ON UPDATE CASCADE;
