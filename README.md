# 💜 AI-Assisted Banking Analytics Dashboard

## 📌 Project Overview

This project is an end-to-end Banking Analytics Dashboard built using AI-assisted synthetic data generation, SQL Server for database design, and Power BI for interactive business intelligence reporting.

The objective of this project is to simulate real-world banking operations and generate actionable insights across customers, accounts, transactions, and loans.

This solution demonstrates strong foundations in:
- Data Modeling
- SQL-based backend design
- KPI development using DAX
- Advanced Power BI reporting features
- UI/UX dashboard design principles

---

## 🛠️ Tech Stack

- **SQL Server** – Database schema & data generation
- **Power BI Desktop** – Data modeling & visualization
- **DAX** – KPI calculations & advanced measures
- **Power BI Service** – Dashboard publishing & sharing
- **AI-assisted synthetic data generation**

---

## 🧠 Data Modeling

The database was structured to simulate a realistic banking system with proper relational integrity.

### Tables Created:
- Customers
- Accounts
- Transactions
- Loans

### Relationships:
- **Customer → Accounts** (1 : Many)
- **Customer → Loans** (1 : Many)
- **Account → Transactions** (1 : Many)

Foreign key relationships were implemented to maintain referential integrity and prevent orphan records.

The data model in Power BI follows a structured relational approach, ensuring accurate aggregations and optimized performance.

---

## 📊 KPIs Created

The following key performance indicators were designed using DAX:

### Customer & Account Metrics
- Total Customers
- Total Accounts
- Active Accounts
- Dormant Accounts
- Closed Accounts
- Total Account Balance
- Average Balance per Customer

### Transaction Metrics
- Total Transactions
- Total Transaction Amount
- Monthly Transaction Volume
- Year-over-Year (YoY) Growth
- Month-over-Month (MoM) Growth

### Loan Metrics
- Total Loan Amount
- Average Loan Amount
- Loan Default Rate
- Loan Status Distribution
- Performing vs Non-Performing Loans

All KPIs were dynamically built using DAX measures for real-time filtering and slicing.

---

## 🎨 UI Design – Lavender Theme

The dashboard was designed using a custom lavender-based color palette to ensure:

- Modern and elegant appearance
- Soft contrast for readability
- Consistent visual hierarchy
- Professional aesthetic suitable for executive presentation

The design includes:
- Themed KPI cards
- Consistent chart color mapping
- Structured spacing & alignment
- Minimalistic background (non-white dominant design)
- Clear page headers for each dashboard section

---

## 🚀 Advanced Features Implemented

To enhance analytical depth and interactivity, the following advanced Power BI features were implemented:

### 📈 Time Intelligence
- Year-over-Year (YoY) Growth
- Month-over-Month (MoM) Growth
- Dynamic trend analysis

### 🎯 Interactive Elements
- Slicers for filtering by:
  - Region
  - Account Status
  - Loan Status
  - Date
- Drill-down capabilities
- Cross-filtering visuals

### 💬 Tooltip Pages
- Custom tooltip pages for detailed breakdowns
- Context-aware information on hover

### 🎨 Conditional Formatting
- KPI color indicators based on performance
- Highlighting high default rates
- Balance comparison visuals

### 🔄 Navigation Buttons
- Page navigation buttons
- Improved user experience
- Structured report flow

---

## 📊 Dashboard Pages

### 🔹 Page 1 – Customer & Account Insights
- Customer segmentation
- Account status distribution
- Balance analysis
- Regional performance overview

### 🔹 Page 2 – Transaction & Loan Insights
- Transaction volume trends
- Loan portfolio analysis
- Default rate distribution
- Time-based growth analysis

---

## 🔗 Live Dashboard

Power BI Service Link:  
https://app.powerbi.com/links/aRFZC3J_tM?ctid=442e6744-dea2-475b-a7fd-27cb5af249db&pbi_source=linkShare&bookmarkGuid=3a02e777-e2e3-4a19-8956-d51e8d3f3ca4
---

## 📂 Repository Structure

```
AI-Assisted-Banking-Analytics-Dashboard/
│
├── sql/
│   └── SQLQuery1.sql
│
├── powerbi/
│   └── Banking_Analytics_Dashboard.pbix
│
├── screenshots/
│   ├── 1_Tooltip.png
│   ├── 2_Customer_and_Account_Insights.png
│   ├── 3_Transaction_and_Loan_Insights.png
│   ├── 4_Model_View.png
│   ├── 5_KPI_for_Customer_and_Account_Insights.png
│   └── 6_KPI_for_Transaction_and_Loan_Insights.png
│
└── README.md
```

---

## 🎯 Key Learnings

- Designing relational banking databases
- Implementing proper data modeling techniques
- Writing optimized DAX measures
- Building executive-level dashboards
- Applying UI/UX best practices in BI reporting
- Using AI as a productivity tool for structured data generation

---

## 👤 Author

Meghana M  
LinkedIn: https://www.linkedin.com/in/meghana-m17official/  
GitHub: https://github.com/meghana-officialhub/

---

