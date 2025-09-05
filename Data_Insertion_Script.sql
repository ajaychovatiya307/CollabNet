-- ========================================================
-- CollabNet Sample Data Inserts 
-- ========================================================

-- =========================
-- Events
-- Company events like meetings, launches, conferences
-- =========================
INSERT INTO Events (Events_Id, Name, Date, Time, Street, City, State, Country, Pin, Link, Agenda, Recurrence) VALUES
(1, 'Quarterly Townhall', '2025-01-11', '09:00', '123 Main St', 'New York', 'NY', 'USA', '10001', 'https://events.collabnet/1', 'Company-wide updates', 'Quarterly'),
(2, 'AI Product Launch', '2025-02-12', '10:07', '56 MG Road', 'San Francisco', 'CA', 'USA', '94105', 'https://events.collabnet/2', 'Launch of AI assistant', 'One-time'),
(3, 'Annual Tech Conference', '2025-03-13', '11:14', '12 King St', 'London', 'London', 'UK', 'SW1A 1AA', 'https://events.collabnet/3', 'Innovation in AI and Cloud', 'Yearly'),
(4, 'Global Leadership Summit', '2025-04-14', '12:21', '45 Market St', 'Bengaluru', 'KA', 'India', '560001', 'https://events.collabnet/4', 'Leadership strategy and planning', 'One-time'),
(5, 'Data Privacy Workshop', '2025-05-15', '13:28', '789 Innovation Dr', 'Tokyo', 'Tokyo', 'Japan', '100-8111', 'https://events.collabnet/5', 'Hands-on GDPR and data privacy', 'Monthly'),
(6, 'Cloud Migration Kickoff', '2025-06-16', '14:35', '200 Lakeshore Blvd', 'Toronto', 'ON', 'Canada', 'M5H 2N2', 'https://events.collabnet/6', 'Project kickoff plan', 'One-time'),
(7, 'DevOps Bootcamp', '2025-07-17', '09:42', '17 Unter den Linden', 'Berlin', 'BE', 'Germany', '10117', 'https://events.collabnet/7', 'CI/CD pipelines and IaC', 'Quarterly'),
(8, 'Security Awareness Training', '2025-08-18', '10:49', '88 George St', 'Sydney', 'NSW', 'Australia', '2000', 'https://events.collabnet/8', 'Phishing and threat vectors', 'Monthly'),
(9, 'Customer Advisory Board', '2025-09-19', '11:56', '3 Rue de Rivoli', 'Paris', 'Île-de-France', 'France', '75001', 'https://events.collabnet/9', 'Feedback from top customers', 'Quarterly'),
(10, 'Hackathon: Innovate24', '2025-10-20', '12:03', '10 Marina Blvd', 'Singapore', 'Singapore', 'Singapore', '018956', 'https://events.collabnet/10', '24-hour prototyping sprint', 'One-time'),
(11, 'Design Sprint Week', '2025-11-21', '13:10', '5 Grafton St', 'Dublin', 'Leinster', 'Ireland', 'D02', 'https://events.collabnet/11', 'Rapid UX problem solving', 'One-time'),
(12, 'All-Hands Meeting', '2025-12-22', '14:17', '1 Bahnhofstrasse', 'Zurich', 'ZH', 'Switzerland', '8001', 'https://events.collabnet/12', 'Org updates and Q&A', 'Monthly'),
(13, 'Product Roadmap Review', '2025-01-23', '09:24', '9 Damrak', 'Amsterdam', 'NH', 'Netherlands', '1012', 'https://events.collabnet/13', 'Review next 2 quarters', 'Quarterly'),
(14, 'Partner Summit', '2025-02-24', '10:31', '22 Sheikh Zayed Rd', 'Dubai', 'Dubai', 'UAE', '00000', 'https://events.collabnet/14', 'Partner enablement', 'Yearly'),
(15, 'CSR Volunteering Day', '2025-03-25', '11:38', '11 Drottninggatan', 'Stockholm', 'Stockholm', 'Sweden', '111 22', 'https://events.collabnet/15', 'Community service and outreach', 'One-time'),
(16, 'Mobile Dev Summit', '2025-04-26', '12:45', '100 La Rambla', 'Barcelona', 'Catalonia', 'Spain', '08002', 'https://events.collabnet/16', 'Mobile trends and tooling', 'Annual'),
(17, 'SRE Incident GameDay', '2025-05-27', '13:52', '77 Jongno', 'Seoul', 'Seoul', 'South Korea', '03141', 'https://events.collabnet/17', 'Practice incident response', 'Quarterly'),
(18, 'ML Ops Exchange', '2025-06-28', '14:59', '350 Congress Ave', 'Austin', 'TX', 'USA', '73301', 'https://events.collabnet/18', 'Production ML best practices', 'Quarterly'),
(19, 'Open Source Day', '2025-07-01', '09:06', '42 Marine Drive', 'Mumbai', 'MH', 'India', '400001', 'https://events.collabnet/19', 'FOSS contributions', 'Annual'),
(20, 'Diversity & Inclusion Forum', '2025-08-02', '10:13', '6 Nyhavn', 'Copenhagen', 'Hovedstaden', 'Denmark', '1050', 'https://events.collabnet/20', 'Inclusive workplace practices', 'Quarterly');

-- =========================
-- Employees
-- List of employees. TeamId linked later
-- =========================
INSERT INTO Employee (Emp_Id, FirstName, MiddleName, LastName, DOB, Gender, Street, City, State, Country, PIN, Availability, TeamId, Contact_Id, Lead_Id, Review_Id, WorkingEmail, PersonalEmail) VALUES
(1, 'John', 'A.', 'Smith', '1981-01-10', 'Male', '123 Main St', 'New York', 'NY', 'USA', '10001', 'Available', NULL, NULL, NULL, NULL, 'john.smith@collabnet.com', 'john0@example.com'),
(2, 'Ananya', 'B.', 'Patel', '1982-02-11', 'Female', '56 MG Road', 'San Francisco', 'CA', 'USA', '94105', 'On Leave', NULL, 1, NULL, NULL, 'ananya.patel@collabnet.com', 'ananya1@example.com'),
(3, 'Liam', 'C.', 'Johnson', '1983-03-12', 'Non-binary', '12 King St', 'London', 'London', 'UK', 'SW1A 1AA', 'Remote', NULL, 1, 1, NULL, 'liam.johnson@collabnet.com', 'liam2@example.com'),
(4, 'Sofia', 'D.', 'Chen', '1984-04-13', 'Male', '45 Market St', 'Bengaluru', 'KA', 'India', '560001', 'Busy', NULL, 2, 1, 1, 'sofia.chen@collabnet.com', 'sofia3@example.com'),
(5, 'Aarav', 'E.', 'Sharma', '1985-05-14', 'Female', '789 Innovation Dr', 'Tokyo', 'Tokyo', 'Japan', '100-8111', 'Available', NULL, 2, 2, 1, 'aarav.sharma@collabnet.com', 'aarav4@example.com'),
(6, 'Emma', 'F.', 'Brown', '1986-06-15', 'Non-binary', '200 Lakeshore Blvd', 'Toronto', 'ON', 'Canada', 'M5H 2N2', 'On Leave', NULL, 2, 2, 2, 'emma.brown@collabnet.com', 'emma5@example.com'),
(7, 'Noah', 'G.', 'Garcia', '1987-07-16', 'Male', '17 Unter den Linden', 'Berlin', 'BE', 'Germany', '10117', 'Remote', NULL, 3, 2, 2, 'noah.garcia@collabnet.com', 'noah6@example.com'),
(8, 'Olivia', 'H.', 'Khan', '1988-08-17', 'Female', '88 George St', 'Sydney', 'NSW', 'Australia', '2000', 'Busy', NULL, 3, 2, 2, 'olivia.khan@collabnet.com', 'olivia7@example.com'),
(9, 'Ethan', 'I.', 'Williams', '1989-09-18', 'Non-binary', '3 Rue de Rivoli', 'Paris', 'Île-de-France', 'France', '75001', 'Available', NULL, 3, 3, 2, 'ethan.williams@collabnet.com', 'ethan8@example.com'),
(10, 'Aisha', 'J.', 'Singh', '1990-01-10', 'Male', '10 Marina Blvd', 'Singapore', 'Singapore', 'Singapore', '018956', 'On Leave', NULL, 4, 3, 2, 'aisha.singh@collabnet.com', 'aisha9@example.com'),
(11, 'Lucas', 'K.', 'Martin', '1991-02-11', 'Female', '5 Grafton St', 'Dublin', 'Leinster', 'Ireland', 'D02', 'Remote', NULL, 4, 3, 3, 'lucas.martin@collabnet.com', 'lucas10@example.com'),
(12, 'Priya', 'L.', 'Kumar', '1992-03-12', 'Non-binary', '1 Bahnhofstrasse', 'Zurich', 'ZH', 'Switzerland', '8001', 'Busy', NULL, 4, 3, 3, 'priya.kumar@collabnet.com', 'priya11@example.com'),
(13, 'Mateo', 'M.', 'Lopez', '1993-04-13', 'Male', '9 Damrak', 'Amsterdam', 'NH', 'Netherlands', '1012', 'Available', NULL, 5, 4, 3, 'mateo.lopez@collabnet.com', 'mateo12@example.com'),
(14, 'Zara', 'N.', 'Nguyen', '1994-05-14', 'Female', '22 Sheikh Zayed Rd', 'Dubai', 'Dubai', 'UAE', '00000', 'On Leave', NULL, 5, 4, 3, 'zara.nguyen@collabnet.com', 'zara13@example.com'),
(15, 'Maya', 'O.', 'Tanaka', '1995-06-15', 'Non-binary', '11 Drottninggatan', 'Stockholm', 'Stockholm', 'Sweden', '111 22', 'Remote', NULL, 5, 4, 3, 'maya.tanaka@collabnet.com', 'maya14@example.com'),
(16, 'Kenji', 'P.', 'Sato', '1996-07-16', 'Male', '100 La Rambla', 'Barcelona', 'Catalonia', 'Spain', '08002', 'Busy', NULL, 6, 4, 4, 'kenji.sato@collabnet.com', 'kenji15@example.com'),
(17, 'Fatima', 'Q.', 'Roy', '1997-08-17', 'Female', '77 Jongno', 'Seoul', 'Seoul', 'South Korea', '03141', 'Available', NULL, 6, 5, 4, 'fatima.roy@collabnet.com', 'fatima16@example.com'),
(18, 'Arjun', 'R.', 'Das', '1998-09-18', 'Non-binary', '350 Congress Ave', 'Austin', 'TX', 'USA', '73301', 'On Leave', NULL, 6, 5, 4, 'arjun.das@collabnet.com', 'arjun17@example.com'),
(19, 'Isabella', 'S.', 'Silva', '1999-01-10', 'Male', '42 Marine Drive', 'Mumbai', 'MH', 'India', '400001', 'Remote', NULL, 7, 5, 4, 'isabella.silva@collabnet.com', 'isabella18@example.com'),
(20, 'Hiro', 'T.', 'Anderson', '2000-02-11', 'Female', '6 Nyhavn', 'Copenhagen', 'Hovedstaden', 'Denmark', '1050', 'Busy', NULL, 7, 5, 4, 'hiro.anderson@collabnet.com', 'hiro19@example.com');

-- =========================
-- Communication_Channel
-- Tools like Slack, Teams. Linked to employee
-- ProjectId linked later
-- =========================
INSERT INTO Communication_Channel (Channel_Id, Type, CreatorId, ProjectId) VALUES
(1, 'Slack', 1, NULL),
(2, 'Teams', 2, NULL),
(3, 'Email DL', 3, NULL),
(4, 'Discord', 4, NULL),
(5, 'Telegram', 5, NULL),
(6, 'Signal', 6, NULL),
(7, 'Mattermost', 7, NULL),
(8, 'Basecamp', 8, NULL),
(9, 'Rocket.Chat', 9, NULL),
(10, 'Google Chat', 10, NULL),
(11, 'Yammer', 11, NULL),
(12, 'Zoom Chat', 12, NULL),
(13, 'GitHub Discussions', 13, NULL),
(14, 'Notion', 14, NULL),
(15, 'Asana', 15, NULL),
(16, 'Jira', 16, NULL),
(17, 'Confluence', 17, NULL),
(18, 'Linear', 18, NULL),
(19, 'Monday', 19, NULL),
(20, 'ClickUp', 20, NULL);

-- =========================
-- Department
-- Org units. Uses leader (employee) and channel
-- =========================
INSERT INTO Department (Dep_Id, Name, Description, Budget, LeaderId, ChannelId) VALUES
(1, 'Engineering', 'Engineering department overseeing org-wide functions', 500000.00, 1, 1),
(2, 'Product', 'Product department overseeing org-wide functions', 530000.00, 2, 2),
(3, 'Design', 'Design department overseeing org-wide functions', 560000.00, 3, 3),
(4, 'Human Resources', 'Human Resources department overseeing org-wide functions', 590000.00, 4, 4),
(5, 'Finance', 'Finance department overseeing org-wide functions', 620000.00, 5, 5),
(6, 'Sales', 'Sales department overseeing org-wide functions', 650000.00, 6, 6),
(7, 'Marketing', 'Marketing department overseeing org-wide functions', 680000.00, 7, 7),
(8, 'IT Operations', 'IT Operations department overseeing org-wide functions', 710000.00, 8, 8),
(9, 'Security', 'Security department overseeing org-wide functions', 740000.00, 9, 9),
(10, 'Customer Success', 'Customer Success department overseeing org-wide functions', 770000.00, 10, 10),
(11, 'Legal', 'Legal department overseeing org-wide functions', 800000.00, 11, 11),
(12, 'Data Science', 'Data Science department overseeing org-wide functions', 830000.00, 12, 12),
(13, 'Research', 'Research department overseeing org-wide functions', 860000.00, 13, 13),
(14, 'Facilities', 'Facilities department overseeing org-wide functions', 890000.00, 14, 14),
(15, 'Corporate Strategy', 'Corporate Strategy department overseeing org-wide functions', 920000.00, 15, 15),
(16, 'Analytics', 'Analytics department overseeing org-wide functions', 950000.00, 16, 16),
(17, 'Support', 'Support department overseeing org-wide functions', 980000.00, 17, 17),
(18, 'Developer Relations', 'Developer Relations department overseeing org-wide functions', 1010000.00, 18, 18),
(19, 'Quality Assurance', 'Quality Assurance department overseeing org-wide functions', 1040000.00, 19, 19),
(20, 'Public Relations', 'Public Relations department overseeing org-wide functions', 1070000.00, 20, 20);

-- =========================
-- Lead_By
-- Links department, leader, and channel
-- =========================
INSERT INTO Lead_By (Lead_Id, Dep_Id, LeaderId, ChannelId) VALUES
(1, 1, 3, 5),
(2, 2, 4, 6),
(3, 3, 5, 7),
(4, 4, 6, 8),
(5, 5, 7, 9),
(6, 6, 8, 10),
(7, 7, 9, 11),
(8, 8, 10, 12),
(9, 9, 11, 13),
(10, 10, 12, 14),
(11, 11, 13, 15),
(12, 12, 14, 16),
(13, 13, 15, 17),
(14, 14, 16, 18),
(15, 15, 17, 19),
(16, 16, 18, 20),
(17, 17, 19, 1),
(18, 18, 20, 2),
(19, 19, 1, 3),
(20, 20, 2, 4);

-- =========================
-- Team
-- Groups inside departments. Employee.TeamId updated later
-- =========================
INSERT INTO Team (Team_Id, AreaOfWorking, TeamEmail, LeaderId, ChannelId, DepartmentId) VALUES
(1, 'Platform', 'platform@teams.collabnet.com', 3, 5, 1),
(2, 'Mobile Apps', 'mobile_apps@teams.collabnet.com', 4, 6, 2),
(3, 'Web Experience', 'web_experience@teams.collabnet.com', 5, 7, 3),
(4, 'Payments', 'payments@teams.collabnet.com', 6, 8, 4),
(5, 'Recruiting', 'recruiting@teams.collabnet.com', 7, 9, 5),
(6, 'FP&A', 'fp&a@teams.collabnet.com', 8, 10, 6),
(7, 'Field Sales', 'field_sales@teams.collabnet.com', 9, 11, 7),
(8, 'Content Marketing', 'content_marketing@teams.collabnet.com', 10, 12, 8),
(9, 'Cloud Infra', 'cloud_infra@teams.collabnet.com', 11, 13, 9),
(10, 'Threat Intelligence', 'threat_intelligence@teams.collabnet.com', 12, 14, 10),
(11, 'Client Onboarding', 'client_onboarding@teams.collabnet.com', 13, 15, 11),
(12, 'Compliance', 'compliance@teams.collabnet.com', 14, 16, 12),
(13, 'ML Platform', 'ml_platform@teams.collabnet.com', 15, 17, 13),
(14, 'Real Estate Ops', 'real_estate_ops@teams.collabnet.com', 16, 18, 14),
(15, 'M&A', 'm&a@teams.collabnet.com', 17, 19, 15),
(16, 'Analytics Eng', 'analytics_eng@teams.collabnet.com', 18, 20, 16),
(17, 'Tier-1 Support', 'tier-1_support@teams.collabnet.com', 19, 1, 17),
(18, 'DevRel', 'devrel@teams.collabnet.com', 20, 2, 18),
(19, 'QA Automation', 'qa_automation@teams.collabnet.com', 1, 3, 19),
(20, 'Media Relations', 'media_relations@teams.collabnet.com', 2, 4, 20);

-- =========================
-- Project
-- Work units. Linked to department and team
-- =========================
INSERT INTO Project (Project_Id, Name, StartDate, DueDate, Status, Budget, Objective, DepartmentID, TeamId) VALUES
(1, 'AI Chatbot Development', '2025-01-01', '2025-02-28', 'Planned', 100000.00, 'Execute AI Chatbot Development to meet strategic goals', 1, 1),
(2, 'Cloud Migration Phase 1', '2025-02-01', '2025-03-28', 'In Progress', 106000.00, 'Execute Cloud Migration Phase 1 to meet strategic goals', 2, 2),
(3, 'Mobile App Redesign', '2025-03-01', '2025-04-28', 'On Hold', 112000.00, 'Execute Mobile App Redesign to meet strategic goals', 3, 3),
(4, 'Payments API v2', '2025-04-01', '2025-05-28', 'Completed', 118000.00, 'Execute Payments API v2 to meet strategic goals', 4, 4),
(5, 'Employer Branding Revamp', '2025-05-01', '2025-06-28', 'Planned', 124000.00, 'Execute Employer Branding Revamp to meet strategic goals', 5, 5),
(6, 'Q3 Forecasting Model', '2025-06-01', '2025-07-28', 'In Progress', 130000.00, 'Execute Q3 Forecasting Model to meet strategic goals', 6, 6),
(7, 'EMEA Expansion', '2025-01-01', '2025-02-28', 'On Hold', 136000.00, 'Execute EMEA Expansion to meet strategic goals', 7, 7),
(8, 'SEO Revamp', '2025-02-01', '2025-03-28', 'Completed', 142000.00, 'Execute SEO Revamp to meet strategic goals', 8, 8),
(9, 'Kubernetes Hardening', '2025-03-01', '2025-04-28', 'Planned', 148000.00, 'Execute Kubernetes Hardening to meet strategic goals', 9, 9),
(10, 'Zero Trust Rollout', '2025-04-01', '2025-05-28', 'In Progress', 154000.00, 'Execute Zero Trust Rollout to meet strategic goals', 10, 10),
(11, 'Onboarding 2.0', '2025-05-01', '2025-06-28', 'On Hold', 160000.00, 'Execute Onboarding 2.0 to meet strategic goals', 11, 11),
(12, 'Contract Lifecycle Tool', '2025-06-01', '2025-07-28', 'Completed', 166000.00, 'Execute Contract Lifecycle Tool to meet strategic goals', 12, 12),
(13, 'Feature Store', '2025-01-01', '2025-02-28', 'Planned', 172000.00, 'Execute Feature Store to meet strategic goals', 13, 13),
(14, 'HQ Relocation', '2025-02-01', '2025-03-28', 'In Progress', 178000.00, 'Execute HQ Relocation to meet strategic goals', 14, 14),
(15, 'Partner Due Diligence', '2025-03-01', '2025-04-28', 'On Hold', 184000.00, 'Execute Partner Due Diligence to meet strategic goals', 15, 15),
(16, 'Realtime Analytics', '2025-04-01', '2025-05-28', 'Completed', 190000.00, 'Execute Realtime Analytics to meet strategic goals', 16, 16),
(17, 'Observability Platform', '2025-05-01', '2025-06-28', 'Planned', 196000.00, 'Execute Observability Platform to meet strategic goals', 17, 17),
(18, 'Self-Serve Billing', '2025-06-01', '2025-07-28', 'In Progress', 202000.00, 'Execute Self-Serve Billing to meet strategic goals', 18, 18),
(19, 'App Internationalization', '2025-01-01', '2025-02-28', 'On Hold', 208000.00, 'Execute App Internationalization to meet strategic goals', 19, 19),
(20, 'Media Monitoring Pipeline', '2025-02-01', '2025-03-28', 'Completed', 214000.00, 'Execute Media Monitoring Pipeline to meet strategic goals', 20, 20);

-- =========================
-- Feedback
-- Employee feedback suggestions
-- =========================
INSERT INTO Feedback (Feedback_Id, Emp_Id, Title, Description) VALUES
(1, 1, 'Improve Build Times', 'Suggestion regarding: Improve Build Times'),
(2, 2, 'Better Standup Structure', 'Suggestion regarding: Better Standup Structure'),
(3, 3, 'Office Ergonomics', 'Suggestion regarding: Office Ergonomics'),
(4, 4, 'More Code Reviews', 'Suggestion regarding: More Code Reviews'),
(5, 5, 'CI Pipeline Flakiness', 'Suggestion regarding: CI Pipeline Flakiness'),
(6, 6, 'Design System Docs', 'Suggestion regarding: Design System Docs'),
(7, 7, 'Laptop Upgrade Policy', 'Suggestion regarding: Laptop Upgrade Policy'),
(8, 8, 'Salesforce Training', 'Suggestion regarding: Salesforce Training'),
(9, 9, 'Network Latency', 'Suggestion regarding: Network Latency'),
(10, 10, 'Security Patch Cadence', 'Suggestion regarding: Security Patch Cadence'),
(11, 11, 'New Mentorship Program', 'Suggestion regarding: New Mentorship Program'),
(12, 12, 'Data Access Process', 'Suggestion regarding: Data Access Process'),
(13, 13, 'Better Release Notes', 'Suggestion regarding: Better Release Notes'),
(14, 14, 'OKR Clarity', 'Suggestion regarding: OKR Clarity'),
(15, 15, 'Remote Work Stipend', 'Suggestion regarding: Remote Work Stipend'),
(16, 16, 'Incident Postmortems', 'Suggestion regarding: Incident Postmortems'),
(17, 17, 'Feature Flag Hygiene', 'Suggestion regarding: Feature Flag Hygiene'),
(18, 18, 'Risk Register Visibility', 'Suggestion regarding: Risk Register Visibility'),
(19, 19, 'On-call Rotation Fairness', 'Suggestion regarding: On-call Rotation Fairness'),
(20, 20, 'Test Data Management', 'Suggestion regarding: Test Data Management');

-- =========================
-- FeedbackTags
-- Tags linked to feedback
-- =========================
INSERT INTO FeedbackTags (FeedbackId, Tag) VALUES
(1, 'DevOps'),
(1, 'best-practices'),
(2, 'Process'),
(2, 'best-practices'),
(3, 'Facilities'),
(3, 'best-practices'),
(4, 'Code Quality'),
(4, 'best-practices'),
(5, 'CI/CD'),
(5, 'best-practices'),
(6, 'Documentation'),
(6, 'best-practices'),
(7, 'IT'),
(7, 'best-practices'),
(8, 'Training'),
(8, 'best-practices'),
(9, 'Network'),
(9, 'best-practices'),
(10, 'Security'),
(10, 'best-practices'),
(11, 'HR'),
(11, 'best-practices'),
(12, 'Data'),
(12, 'best-practices'),
(13, 'Release'),
(13, 'best-practices'),
(14, 'Planning'),
(14, 'best-practices'),
(15, 'Remote'),
(15, 'best-practices'),
(16, 'Reliability'),
(16, 'best-practices'),
(17, 'Feature Flags'),
(17, 'best-practices'),
(18, 'Risk'),
(18, 'best-practices'),
(19, 'On-call'),
(19, 'best-practices'),
(20, 'Testing'),
(20, 'best-practices');

-- =========================
-- Resume
-- Employee resume info (1:1 with employee)
-- =========================
INSERT INTO Resume (Emp_Id, EducationHistory, WorkExperience, TechnicalSkills) VALUES
(1, 'Degree(s) in Computer Science/Business for Emp 1', '2 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(2, 'Degree(s) in Computer Science/Business for Emp 2', '3 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(3, 'Degree(s) in Computer Science/Business for Emp 3', '4 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(4, 'Degree(s) in Computer Science/Business for Emp 4', '5 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(5, 'Degree(s) in Computer Science/Business for Emp 5', '6 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(6, 'Degree(s) in Computer Science/Business for Emp 6', '7 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(7, 'Degree(s) in Computer Science/Business for Emp 7', '8 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(8, 'Degree(s) in Computer Science/Business for Emp 8', '9 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(9, 'Degree(s) in Computer Science/Business for Emp 9', '10 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(10, 'Degree(s) in Computer Science/Business for Emp 10', '2 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(11, 'Degree(s) in Computer Science/Business for Emp 11', '3 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(12, 'Degree(s) in Computer Science/Business for Emp 12', '4 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(13, 'Degree(s) in Computer Science/Business for Emp 13', '5 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(14, 'Degree(s) in Computer Science/Business for Emp 14', '6 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(15, 'Degree(s) in Computer Science/Business for Emp 15', '7 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(16, 'Degree(s) in Computer Science/Business for Emp 16', '8 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(17, 'Degree(s) in Computer Science/Business for Emp 17', '9 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(18, 'Degree(s) in Computer Science/Business for Emp 18', '10 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(19, 'Degree(s) in Computer Science/Business for Emp 19', '2 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux'),
(20, 'Degree(s) in Computer Science/Business for Emp 20', '3 years of experience including cross-functional work', 'Python; SQL; Git; Docker; Cloud; Linux');

-- =========================
-- Tracking
-- Tracks employee work on projects
-- =========================
INSERT INTO Tracking (Emp_Id, Project_Id, Update, Time, Date) VALUES
(1, 4, 'Progress updated by Emp 1 on Project 4', '09:00', '2025-07-01'),
(2, 5, 'Progress updated by Emp 2 on Project 5', '10:11', '2025-07-02'),
(3, 6, 'Progress updated by Emp 3 on Project 6', '11:22', '2025-07-03'),
(4, 7, 'Progress updated by Emp 4 on Project 7', '12:33', '2025-07-04'),
(5, 8, 'Progress updated by Emp 5 on Project 8', '13:44', '2025-07-05'),
(6, 9, 'Progress updated by Emp 6 on Project 9', '14:55', '2025-07-06'),
(7, 10, 'Progress updated by Emp 7 on Project 10', '15:06', '2025-07-07'),
(8, 11, 'Progress updated by Emp 8 on Project 11', '16:17', '2025-07-08'),
(9, 12, 'Progress updated by Emp 9 on Project 12', '09:28', '2025-07-09'),
(10, 13, 'Progress updated by Emp 10 on Project 13', '10:39', '2025-07-10'),
(11, 14, 'Progress updated by Emp 11 on Project 14', '11:50', '2025-07-11'),
(12, 15, 'Progress updated by Emp 12 on Project 15', '12:01', '2025-07-12'),
(13, 16, 'Progress updated by Emp 13 on Project 16', '13:12', '2025-07-13'),
(14, 17, 'Progress updated by Emp 14 on Project 17', '14:23', '2025-07-14'),
(15, 18, 'Progress updated by Emp 15 on Project 18', '15:34', '2025-07-15'),
(16, 19, 'Progress updated by Emp 16 on Project 19', '16:45', '2025-07-16'),
(17, 20, 'Progress updated by Emp 17 on Project 20', '09:56', '2025-07-17'),
(18, 1, 'Progress updated by Emp 18 on Project 1', '10:07', '2025-07-18'),
(19, 2, 'Progress updated by Emp 19 on Project 2', '11:18', '2025-07-19'),
(20, 3, 'Progress updated by Emp 20 on Project 3', '12:29', '2025-07-20');

-- =========================
-- Invoice
-- Billing info for employees
-- =========================
INSERT INTO Invoice (Invoice_Id, Emp_Id, Status, DueDate, Taxes, PaymentMethod, Notes) VALUES
(1, 1, 'Pending', '2025-08-01', 50.00, 'Wire', 'Monthly billing for Emp 1'),
(2, 2, 'Paid', '2025-08-02', 53.50, 'ACH', 'Monthly billing for Emp 2'),
(3, 3, 'Overdue', '2025-08-03', 57.00, 'Credit Card', 'Monthly billing for Emp 3'),
(4, 4, 'Pending', '2025-08-04', 60.50, 'UPI', 'Monthly billing for Emp 4'),
(5, 5, 'Paid', '2025-08-05', 64.00, 'PayPal', 'Monthly billing for Emp 5'),
(6, 6, 'Overdue', '2025-08-06', 67.50, 'Wire', 'Monthly billing for Emp 6'),
(7, 7, 'Pending', '2025-08-07', 71.00, 'ACH', 'Monthly billing for Emp 7'),
(8, 8, 'Paid', '2025-08-08', 74.50, 'Credit Card', 'Monthly billing for Emp 8'),
(9, 9, 'Overdue', '2025-08-09', 78.00, 'UPI', 'Monthly billing for Emp 9'),
(10, 10, 'Pending', '2025-08-10', 81.50, 'PayPal', 'Monthly billing for Emp 10'),
(11, 11, 'Paid', '2025-08-11', 85.00, 'Wire', 'Monthly billing for Emp 11'),
(12, 12, 'Overdue', '2025-08-12', 88.50, 'ACH', 'Monthly billing for Emp 12'),
(13, 13, 'Pending', '2025-08-13', 92.00, 'Credit Card', 'Monthly billing for Emp 13'),
(14, 14, 'Paid', '2025-08-14', 95.50, 'UPI', 'Monthly billing for Emp 14'),
(15, 15, 'Overdue', '2025-08-15', 99.00, 'PayPal', 'Monthly billing for Emp 15'),
(16, 16, 'Pending', '2025-08-16', 102.50, 'Wire', 'Monthly billing for Emp 16'),
(17, 17, 'Paid', '2025-08-17', 106.00, 'ACH', 'Monthly billing for Emp 17'),
(18, 18, 'Overdue', '2025-08-18', 109.50, 'Credit Card', 'Monthly billing for Emp 18'),
(19, 19, 'Pending', '2025-08-19', 113.00, 'UPI', 'Monthly billing for Emp 19'),
(20, 20, 'Paid', '2025-08-20', 116.50, 'PayPal', 'Monthly billing for Emp 20');

-- =========================
-- Resource (generic resources for projects)
-- Subtypes below (Pdf, GitRepository, Software, Code).
-- =========================
INSERT INTO Resource (Resource_Id, ProjectId, Name) VALUES
(1, 1, 'SRS Document'),
(2, 2, 'Architecture Diagram'),
(3, 3, 'API Spec'),
(4, 4, 'User Research Report'),
(5, 5, 'Marketing Plan'),
(6, 6, 'Terraform Modules'),
(7, 7, 'K8s Manifests'),
(8, 8, 'Onboarding Guide'),
(9, 9, 'Legal Template Pack'),
(10, 10, 'Model Cards'),
(11, 11, 'Feature Store Docs'),
(12, 12, 'Office Lease PDF'),
(13, 13, 'Partner Diligence Checklist'),
(14, 14, 'Incident Runbook'),
(15, 15, 'OKR Template'),
(16, 16, 'Observability Dashboards'),
(17, 17, 'Billing Playbook'),
(18, 18, 'i18n Glossary'),
(19, 19, 'Media Intelligence Guide'),
(20, 20, 'ML Ops SOP');

-- =========================
-- Pdf (resource subtype)
-- Only for some resources.
-- =========================
INSERT INTO Pdf (ResourceId, Pages, Description, Tags) VALUES
(1, 11, 'PDF resource 1', 'policy;docs'),
(4, 14, 'PDF resource 4', 'policy;docs'),
(9, 19, 'PDF resource 9', 'policy;docs'),
(12, 22, 'PDF resource 12', 'policy;docs'),
(15, 25, 'PDF resource 15', 'policy;docs'),
(18, 28, 'PDF resource 18', 'policy;docs'),
(20, 30, 'PDF resource 20', 'policy;docs');

-- =========================
-- GitRepository (resource subtype)
-- Example code repos.
-- =========================
INSERT INTO GitRepository (ResourceId, NumberOfFiles) VALUES
(3, 103),
(6, 106),
(10, 110),
(13, 113),
(14, 114),
(16, 116),
(19, 119);

-- =========================
-- Software (resource subtype)
-- Example binary assets.
-- =========================
INSERT INTO Software (ResourceId, Size) VALUES
(7, '150MB'),
(8, '95MB'),
(11, '220MB'),
(17, '60MB');

-- =========================
-- Code (resource subtype)
-- Example language modules.
-- =========================
INSERT INTO Code (ResourceId, Language, Description, Comments) VALUES
(2, 'TypeScript', 'Code module 2', 'Reviewed by peers'),
(5, 'Python', 'Code module 5', 'Reviewed by peers'),
(10, 'Scala', 'Code module 10', 'Reviewed by peers'),
(13, 'Go', 'Code module 13', 'Reviewed by peers'),
(15, 'Rust', 'Code module 15', 'Reviewed by peers'),
(16, 'Java', 'Code module 16', 'Reviewed by peers'),
(19, 'Kotlin', 'Code module 19', 'Reviewed by peers');

-- =========================
-- Policy (company rules)
-- Linked to departments.
-- =========================
INSERT INTO Policy (Policy_Id, Title, Description, EffectiveDate, DueDate, RevisionDate, ApprovalStatus, DepartmentId) VALUES
(1, 'Code of Conduct', 'Policy covering code of conduct', '2025-01-01', '2025-12-01', '2025-06-01', 'Draft', 1),
(2, 'Work From Home Policy', 'Policy covering work from home policy', '2025-01-02', '2025-12-02', '2025-06-02', 'Approved', 2),
(3, 'Information Security Policy', 'Policy covering information security policy', '2025-01-03', '2025-12-03', '2025-06-03', 'Under Review', 3),
(4, 'Expense Reimbursement', 'Policy covering expense reimbursement', '2025-01-04', '2025-12-04', '2025-06-04', 'Draft', 4),
(5, 'Leave and Attendance', 'Policy covering leave and attendance', '2025-01-05', '2025-12-05', '2025-06-05', 'Approved', 5),
(6, 'Equal Opportunity', 'Policy covering equal opportunity', '2025-01-06', '2025-12-06', '2025-06-06', 'Under Review', 6),
(7, 'Data Retention', 'Policy covering data retention', '2025-01-07', '2025-12-07', '2025-06-07', 'Draft', 7),
(8, 'Vendor Management', 'Policy covering vendor management', '2025-01-08', '2025-12-08', '2025-06-08', 'Approved', 8),
(9, 'Travel Policy', 'Policy covering travel policy', '2025-01-09', '2025-12-09', '2025-06-09', 'Under Review', 9),
(10, 'Remote Access', 'Policy covering remote access', '2025-01-10', '2025-12-10', '2025-06-10', 'Draft', 10),
(11, 'Incident Response', 'Policy covering incident response', '2025-01-11', '2025-12-11', '2025-06-11', 'Approved', 11),
(12, 'Password Policy', 'Policy covering password policy', '2025-01-12', '2025-12-12', '2025-06-12', 'Under Review', 12),
(13, 'Open Source Usage', 'Policy covering open source usage', '2025-01-13', '2025-12-13', '2025-06-13', 'Draft', 13),
(14, 'Procurement Policy', 'Policy covering procurement policy', '2025-01-14', '2025-12-14', '2025-06-14', 'Approved', 14),
(15, 'Asset Management', 'Policy covering asset management', '2025-01-15', '2025-12-15', '2025-06-15', 'Under Review', 15),
(16, 'Data Classification', 'Policy covering data classification', '2025-01-16', '2025-12-16', '2025-06-16', 'Draft', 16),
(17, 'AI Usage Guidelines', 'Policy covering ai usage guidelines', '2025-01-17', '2025-12-17', '2025-06-17', 'Approved', 17),
(18, 'Privacy Notice', 'Policy covering privacy notice', '2025-01-18', '2025-12-18', '2025-06-18', 'Under Review', 18),
(19, 'BYOD Policy', 'Policy covering byod policy', '2025-01-19', '2025-12-19', '2025-06-19', 'Draft', 19),
(20, 'Media Policy', 'Policy covering media policy', '2025-01-20', '2025-12-20', '2025-06-20', 'Approved', 20);

-- =========================
-- PolicyDocuments
-- File paths for each policy
-- =========================
INSERT INTO PolicyDocuments (PolicyId, DocumentPath) VALUES
(1, '/policies/code_of_conduct.pdf'),
(2, '/policies/work_from_home_policy.pdf'),
(3, '/policies/information_security_policy.pdf'),
(4, '/policies/expense_reimbursement.pdf'),
(5, '/policies/leave_and_attendance.pdf'),
(6, '/policies/equal_opportunity.pdf'),
(7, '/policies/data_retention.pdf'),
(8, '/policies/vendor_management.pdf'),
(9, '/policies/travel_policy.pdf'),
(10, '/policies/remote_access.pdf'),
(11, '/policies/incident_response.pdf'),
(12, '/policies/password_policy.pdf'),
(13, '/policies/open_source_usage.pdf'),
(14, '/policies/procurement_policy.pdf'),
(15, '/policies/asset_management.pdf'),
(16, '/policies/data_classification.pdf'),
(17, '/policies/ai_usage_guidelines.pdf'),
(18, '/policies/privacy_notice.pdf'),
(19, '/policies/byod_policy.pdf'),
(20, '/policies/media_policy.pdf');

-- =========================
-- ProductLaunch (event subtype)
-- For launch events.
-- =========================
INSERT INTO ProductLaunch (EventId) VALUES
(2),
(9),
(14),
(16),
(18);

-- =========================
-- Conferences (event subtype)
-- Extra description for some events.
-- =========================
INSERT INTO Conferences (EventId, Description) VALUES
(3, 'Conference track and sessions for event 3'),
(4, 'Conference track and sessions for event 4'),
(15, 'Conference track and sessions for event 15'),
(19, 'Conference track and sessions for event 19'),
(20, 'Conference track and sessions for event 20');

-- =========================
-- LaunchLeaders (leaders for product launches)
-- Names are from Employees.
-- =========================
INSERT INTO LaunchLeaders (EventId, LeaderName) VALUES
(2, 'John Smith'),
(2, 'Ananya Patel'),
(9, 'Ananya Patel'),
(9, 'Liam Johnson'),
(14, 'Liam Johnson'),
(14, 'Sofia Chen'),
(16, 'Sofia Chen'),
(16, 'Aarav Sharma'),
(18, 'Aarav Sharma'),
(18, 'Emma Brown');

-- =========================
-- Invited
-- Teams invited to events with reminder dates
-- =========================
INSERT INTO Invited (TeamId, EventId, ReminderDate) VALUES
(1, 1, '2025-02-01'),
(2, 4, '2025-02-02'),
(3, 7, '2025-02-03'),
(4, 10, '2025-02-04'),
(5, 13, '2025-02-05'),
(6, 16, '2025-02-06'),
(7, 19, '2025-02-07'),
(8, 2, '2025-02-08'),
(9, 5, '2025-02-09'),
(10, 8, '2025-02-10'),
(11, 11, '2025-02-11'),
(12, 14, '2025-02-12'),
(13, 17, '2025-02-13'),
(14, 20, '2025-02-14'),
(15, 3, '2025-02-15'),
(16, 6, '2025-02-16'),
(17, 9, '2025-02-17'),
(18, 12, '2025-02-18'),
(19, 15, '2025-02-19'),
(20, 18, '2025-02-20');

-- =========================
-- Reference
-- Books and learning materials
-- =========================
INSERT INTO Reference (Reference_Id, Name, Description, Category, Author, Link, Rating) VALUES
(1, 'Designing Data-Intensive Applications', 'Reference on Designing Data-Intensive Applications', 'Book', 'Martin Kleppmann', 'https://ref.collab/1', 4.1),
(2, 'Accelerate', 'Reference on Accelerate', 'Book', 'Forsgren et al.', 'https://ref.collab/2', 4.28),
(3, 'Clean Code', 'Reference on Clean Code', 'Book', 'Robert C. Martin', 'https://ref.collab/3', 4.46),
(4, 'Site Reliability Engineering', 'Reference on Site Reliability Engineering', 'Book', 'Beyer et al.', 'https://ref.collab/4', 4.64),
(5, 'The Phoenix Project', 'Reference on The Phoenix Project', 'Book', 'Kim et al.', 'https://ref.collab/5', 4.82),
(6, 'Effective Java', 'Reference on Effective Java', 'Book', 'Joshua Bloch', 'https://ref.collab/6', 4.1),
(7, 'Machine Learning Design', 'Reference on Machine Learning Design', 'Book', 'Chip Huyen', 'https://ref.collab/7', 4.28),
(8, 'Kubernetes Up & Running', 'Reference on Kubernetes Up & Running', 'Book', 'Burns et al.', 'https://ref.collab/8', 4.46),
(9, 'Deep Learning', 'Reference on Deep Learning', 'Book', 'Goodfellow et al.', 'https://ref.collab/9', 4.64),
(10, 'The DevOps Handbook', 'Reference on The DevOps Handbook', 'Book', 'Kim et al.', 'https://ref.collab/10', 4.82),
(11, 'Refactoring', 'Reference on Refactoring', 'Book', 'Martin Fowler', 'https://ref.collab/11', 4.1),
(12, 'Hands-On Machine Learning', 'Reference on Hands-On Machine Learning', 'Book', 'Aurelien Geron', 'https://ref.collab/12', 4.28),
(13, 'Building Microservices', 'Reference on Building Microservices', 'Book', 'Sam Newman', 'https://ref.collab/13', 4.46),
(14, 'The Manager''s Path', 'Reference on The Manager''s Path', 'Book', 'Camille Fournier', 'https://ref.collab/14', 4.64),
(15, 'Production-Ready ML', 'Reference on Production-Ready ML', 'Book', 'Ted Dunning', 'https://ref.collab/15', 4.82),
(16, 'Design It!', 'Reference on Design It!', 'Book', 'Michael Keeling', 'https://ref.collab/16', 4.1),
(17, 'The Pragmatic Programmer', 'Reference on The Pragmatic Programmer', 'Book', 'Hunt & Thomas', 'https://ref.collab/17', 4.28),
(18, 'Team Topologies', 'Reference on Team Topologies', 'Book', 'Skelton & Pais', 'https://ref.collab/18', 4.46),
(19, 'Algorithms to Live By', 'Reference on Algorithms to Live By', 'Book', 'Christian & Griffiths', 'https://ref.collab/19', 4.64),
(20, 'Continuous Delivery', 'Reference on Continuous Delivery', 'Book', 'Humble & Farley', 'https://ref.collab/20', 4.82);

-- =========================
-- ReferenceKeywords
-- Tags for references
-- =========================
INSERT INTO ReferenceKeywords (ReferenceId, Keyword) VALUES
(1, 'architecture'),
(1, 'best-practices'),
(2, 'devops'),
(2, 'best-practices'),
(3, 'clean-code'),
(3, 'best-practices'),
(4, 'sre'),
(4, 'best-practices'),
(5, 'it-ops'),
(5, 'best-practices'),
(6, 'java'),
(6, 'best-practices'),
(7, 'ml'),
(7, 'best-practices'),
(8, 'kubernetes'),
(8, 'best-practices'),
(9, 'ai'),
(9, 'best-practices'),
(10, 'ops'),
(10, 'best-practices'),
(11, 'refactoring'),
(11, 'best-practices'),
(12, 'ml-practice'),
(12, 'best-practices'),
(13, 'microservices'),
(13, 'best-practices'),
(14, 'management'),
(14, 'best-practices'),
(15, 'mlops'),
(15, 'best-practices'),
(16, 'design'),
(16, 'best-practices'),
(17, 'craft'),
(17, 'best-practices'),
(18, 'team-structure'),
(18, 'best-practices'),
(19, 'algorithms'),
(19, 'best-practices'),
(20, 'cd'),
(20, 'best-practices');

-- =========================
-- External (which teams can access which references)
-- TRUE = can access. FALSE = cannot.
-- =========================
INSERT INTO External (TeamId, ReferenceId, Accessible) VALUES
(1, 1, TRUE),
(2, 3, FALSE),
(3, 5, TRUE),
(4, 7, FALSE),
(5, 9, TRUE),
(6, 11, FALSE),
(7, 13, TRUE),
(8, 15, FALSE),
(9, 17, TRUE),
(10, 19, FALSE),
(11, 1, TRUE),
(12, 3, FALSE),
(13, 5, TRUE),
(14, 7, FALSE),
(15, 9, TRUE),
(16, 11, FALSE),
(17, 13, TRUE),
(18, 15, FALSE),
(19, 17, TRUE),
(20, 19, FALSE);


-- =========================
-- Final updates (set FKs that we left NULL earlier)
-- 1) Link channels to projects
-- 2) Assign employees to teams (round-robin)
-- =========================

-- Link Communication_Channel.ProjectId to Projects 1..20
UPDATE Communication_Channel SET ProjectId = 1 WHERE Channel_Id = 1;
UPDATE Communication_Channel SET ProjectId = 2 WHERE Channel_Id = 2;
UPDATE Communication_Channel SET ProjectId = 3 WHERE Channel_Id = 3;
UPDATE Communication_Channel SET ProjectId = 4 WHERE Channel_Id = 4;
UPDATE Communication_Channel SET ProjectId = 5 WHERE Channel_Id = 5;
UPDATE Communication_Channel SET ProjectId = 6 WHERE Channel_Id = 6;
UPDATE Communication_Channel SET ProjectId = 7 WHERE Channel_Id = 7;
UPDATE Communication_Channel SET ProjectId = 8 WHERE Channel_Id = 8;
UPDATE Communication_Channel SET ProjectId = 9 WHERE Channel_Id = 9;
UPDATE Communication_Channel SET ProjectId = 10 WHERE Channel_Id = 10;
UPDATE Communication_Channel SET ProjectId = 11 WHERE Channel_Id = 11;
UPDATE Communication_Channel SET ProjectId = 12 WHERE Channel_Id = 12;
UPDATE Communication_Channel SET ProjectId = 13 WHERE Channel_Id = 13;
UPDATE Communication_Channel SET ProjectId = 14 WHERE Channel_Id = 14;
UPDATE Communication_Channel SET ProjectId = 15 WHERE Channel_Id = 15;
UPDATE Communication_Channel SET ProjectId = 16 WHERE Channel_Id = 16;
UPDATE Communication_Channel SET ProjectId = 17 WHERE Channel_Id = 17;
UPDATE Communication_Channel SET ProjectId = 18 WHERE Channel_Id = 18;
UPDATE Communication_Channel SET ProjectId = 19 WHERE Channel_Id = 19;
UPDATE Communication_Channel SET ProjectId = 20 WHERE Channel_Id = 20;

-- Assign Employees to Teams (1..20)
UPDATE Employee SET TeamId = 1 WHERE Emp_Id = 1;
UPDATE Employee SET TeamId = 2 WHERE Emp_Id = 2;
UPDATE Employee SET TeamId = 3 WHERE Emp_Id = 3;
UPDATE Employee SET TeamId = 4 WHERE Emp_Id = 4;
UPDATE Employee SET TeamId = 5 WHERE Emp_Id = 5;
UPDATE Employee SET TeamId = 6 WHERE Emp_Id = 6;
UPDATE Employee SET TeamId = 7 WHERE Emp_Id = 7;
UPDATE Employee SET TeamId = 8 WHERE Emp_Id = 8;
UPDATE Employee SET TeamId = 9 WHERE Emp_Id = 9;
UPDATE Employee SET TeamId = 10 WHERE Emp_Id = 10;
UPDATE Employee SET TeamId = 11 WHERE Emp_Id = 11;
UPDATE Employee SET TeamId = 12 WHERE Emp_Id = 12;
UPDATE Employee SET TeamId = 13 WHERE Emp_Id = 13;
UPDATE Employee SET TeamId = 14 WHERE Emp_Id = 14;
UPDATE Employee SET TeamId = 15 WHERE Emp_Id = 15;
UPDATE Employee SET TeamId = 16 WHERE Emp_Id = 16;
UPDATE Employee SET TeamId = 17 WHERE Emp_Id = 17;
UPDATE Employee SET TeamId = 18 WHERE Emp_Id = 18;
UPDATE Employee SET TeamId = 19 WHERE Emp_Id = 19;
UPDATE Employee SET TeamId = 20 WHERE Emp_Id = 20;
