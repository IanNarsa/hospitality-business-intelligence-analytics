# 🏨 Hospitality Business Intelligence Analytics

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Google Cloud](https://img.shields.io/badge/GoogleCloud-%234285F4.svg?style=for-the-badge&logo=google-cloud&logoColor=white)
![Google BigQuery](https://img.shields.io/badge/Google%20BigQuery-66CCFF?style=for-the-badge&logo=googlebigquery&logoColor=white)
![Looker Studio](https://img.shields.io/badge/Looker_Studio-4285F4?style=for-the-badge&logo=looker&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-003B57?style=for-the-badge&logo=postgresql&logoColor=white)

> **An end-to-end cloud-based Business Intelligence workflow for hospitality booking analytics using Python, Google BigQuery, SQL Views, and Looker Studio.**

---

## 📑 Table of Contents
- [Executive Overview](#-executive-overview)
- [Business Problem Statement](#-business-problem-statement)
- [Key Business Objectives](#-key-business-objectives)
- [Key Business Questions](#-key-business-questions)
- [End-to-End Architecture Workflow](#-end-to-end-architecture-workflow)
- [Technology Stack](#-technology-stack)
- [Project Structure](#-project-structure)
- [SQL Views Implementation](#-sql-views-implementation)
- [Dashboard Overview](#-dashboard-overview)
- [Key Business Insights](#-key-business-insights)
- [Business Recommendations](#-business-recommendations)
- [Challenges & Learnings](#-challenges--learnings)
- [Future Improvements](#-future-improvements)
- [Installation & Setup](#-installation--setup)
- [Professional Conclusion](#-professional-conclusion)
- [Project Links](#-project-links)

---

## 🏢 Executive Overview

This project simulates a comprehensive, enterprise-grade hospitality business intelligence environment. By transforming raw booking transactional data into actionable operational and commercial insights, this centralized BI pipeline facilitates proactive performance monitoring and strategic business decision-making. 

The focus of this project goes beyond dashboard creation; it emphasizes robust architectural design, SQL-driven transformation layers, and business-centric KPI modeling tailored for the hospitality sector.

## ⚠️ Business Problem Statement

Hospitality enterprises process thousands of booking transactions daily. However, without a centralized data strategy, this raw data provides limited strategic value. Stakeholders often struggle with fragmented reporting, leading to reactive rather than proactive operational decisions. 

To maintain competitive advantage, hospitality operators require clear, real-time visibility into booking trends, channel performance, reservation behavior, and revenue generation. This project addresses the critical need for a structured Business Intelligence workflow capable of transforming siloed transactional data into a single source of operational truth.

## 🎯 Key Business Objectives

- **Monitor Performance:** Track booking trends, seasonal demand, and revenue generation.
- **Optimize Channels:** Evaluate the commercial effectiveness of various booking channels.
- **Understand Customer Behavior:** Analyze lead times, length of stay, and room preferences.
- **Enhance Operations:** Provide visibility into reservation status activity to optimize staffing and resource allocation.
- **Architect Scalability:** Build highly reusable SQL-based analytics layers inside a cloud data warehouse.
- **Deliver Executive Reporting:** Create an intuitive, high-level dashboard for stakeholder consumption.

## ❓ Key Business Questions

The data modeling and dashboard were designed to answer critical business questions:
1. Which booking channels generate the highest revenue and booking volume?
2. What room types are most frequently booked by customers?
3. How do booking trends and operational loads fluctuate throughout the year?
4. What is the average customer lead time before check-in?
5. Which reservation statuses dominate current operational activity?
6. How does room demand vary across different booking channels?

## ⚙️ End-to-End Architecture Workflow

This project implements a scalable cloud analytics architecture, transforming raw CSV data into an interactive dashboard.

```text
[ Raw CSV Dataset ] 
       ↓ 
[ Google Colab (Python/Pandas: Data Cleaning & Transformation) ] 
       ↓ 
[ Google BigQuery (Enterprise Data Warehouse) ] 
       ↓ 
[ BigQuery SQL Views (Business Logic & KPI Transformation) ] 
       ↓ 
[ Looker Studio (Executive Dashboard Visualization) ]
```

### Architecture Diagram
![Architecture Workflow]([INSERT ARCHITECTURE IMAGE])

## 🛠️ Technology Stack

| Layer | Technology | Purpose |
|-------|------------|---------|
| **Data Processing** | Python, Pandas | Data cleaning, preprocessing, EDA |
| **Notebook Environment** | Google Colab | Iterative analysis and script execution |
| **Data Warehouse** | Google BigQuery | Scalable cloud data storage |
| **Transformation Layer** | BigQuery SQL Views | Reusable business logic and aggregations |
| **Data Visualization** | Looker Studio | Executive dashboarding and reporting |
| **Cloud Platform** | Google Cloud Platform (GCP)| Cloud infrastructure ecosystem |

## 📂 Project Structure

```bash
hospitality-business-intelligence-analytics/
│
├── README.md                           # Project documentation and executive summary
├── requirements.txt                    # Python dependencies
│
├── data/
│   └── sample_dataset.csv              # Raw/Sample hospitality dataset
│
├── notebook/
│   └── hospitality_bi_analysis.ipynb   # Python preprocessing and EDA workflow
│
├── sql/
│   ├── average_lead_time_by_channel.sql # SQL View: Lead time analysis
│   ├── average_length_of_stay.sql       # SQL View: Stay duration analysis
│   ├── average_price_per_room_type.sql  # SQL View: Pricing behavior
│   ├── daily_check_in_volume.sql        # SQL View: Operational load
│   ├── monthly_bookings_2025.sql        # SQL View: Trend analysis
│   ├── most_booked_room.sql             # SQL View: Room demand
│   ├── reservation_status_counts.sql    # SQL View: Booking conversions
│   ├── room_type_channel_bookings.sql   # SQL View: Channel distribution
│   ├── top_revenue_channel.sql          # SQL View: Financial performance
│   └── total_revenue.sql                # SQL View: Top-level revenue KPI
│
├── dashboard/
│   ├── dashboard_overview.png           # Looker Studio overall view
│   ├── booking_trend.png                # Looker Studio trend page
│   ├── channel_analysis.png             # Looker Studio channel page
│   └── reservation_analysis.png         # Looker Studio reservation page
│
├── architecture/
│   └── architecture_workflow.png        # BI pipeline architecture diagram
│
└── docs/
    └── business_case_study.md           # Comprehensive business case analysis
```

## 🗄️ SQL Views Implementation

To ensure data governance and optimize dashboard performance, business logic was decoupled from Looker Studio and shifted upstream into **BigQuery SQL Views**. 

Key implemented views include:
- `average_lead_time_by_channel_view`: Tracks customer booking behavior.
- `monthly_bookings_2025_view`: Aggregates temporal trends for operational planning.
- `room_type_channel_bookings_view`: Cross-analyzes product demand with distribution networks.
- `total_revenue_view`: Provides the foundational financial KPI.

## 📊 Dashboard Overview

The Looker Studio dashboard was tailored for hospitality executives, offering modular insights across different business domains:
- **Executive KPI Summary:** High-level metrics including Total Revenue, Booking Volume, and Average Lead Time.
- **Booking Trend Analysis:** Time-series tracking of operational load and seasonality.
- **Room Performance Analysis:** Demand distribution mapping to support pricing and allocation.
- **Channel Performance Intelligence:** Effectiveness and profitability of distribution networks.
- **Reservation Status Monitoring:** Conversion and cancellation tracking.

### Dashboard Screenshots
![Dashboard Overview]([INSERT DASHBOARD IMAGE])
*(Replace placeholder with actual dashboard screenshot)*

## 💡 Key Business Insights

1. **OTA Channel Dominance:** Online Travel Agencies (OTAs) account for the majority of booking volume, indicating heavy reliance on third-party ecosystems.
2. **Standard Room Demand:** Demand is heavily concentrated in standard/mid-range room categories.
3. **Seasonal Peaks:** Significant booking spikes are visible during mid-year periods, impacting operational requirements.
4. **Corporate Channel Stability:** While lower in volume, corporate bookings exhibit stable lead times, offering predictable revenue streams.
5. **Healthy Conversion:** Completed check-ins significantly outweigh cancellations, indicating strong operational conversion.

## 🚀 Business Recommendations

- **Optimize Direct Bookings:** Implement loyalty programs and exclusive pricing to reduce OTA commission dependency.
- **Dynamic Pricing Strategy:** Capitalize on high-demand standard rooms through algorithmic pricing adjustments.
- **Seasonal Readiness:** Align staffing, inventory, and operational capacity with identified mid-year peak demand periods.
- **Predictive Analytics:** Invest in future capabilities for occupancy and cancellation forecasting to mitigate revenue loss.

## 🧠 Challenges & Learnings

- **KPI Design Over Aesthetics:** A core learning was that successful BI centers around answering business questions, not just building complex visualizations.
- **SQL Modularity:** Utilizing BigQuery Views drastically improved dashboard load times and centralized metric definitions, avoiding fragmented logic.
- **Bridging the Gap:** This project reinforced the critical need to blend technical data engineering skills with commercial and operational reasoning.

## 🔮 Future Improvements

- Implementation of predictive machine learning models for occupancy forecasting.
- Integration of automated pipeline orchestration (e.g., Apache Airflow, dbt).
- Real-time streaming analytics for intraday operational monitoring.
- Deeper customer segmentation and lifetime value (CLV) analysis.

## 💻 Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/hospitality-business-intelligence-analytics.git
   cd hospitality-business-intelligence-analytics
   ```

2. **Python Environment Setup:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Data Preparation:**
   - Execute the Jupyter Notebook `notebook/hospitality_bi_analysis.ipynb` to clean and transform the `data/sample_dataset.csv`.

4. **BigQuery Deployment:**
   - Load the cleaned output dataset into your Google BigQuery project.
   - Execute the SQL scripts in the `sql/` directory to generate the necessary reporting Views.

5. **Looker Studio:**
   - Connect a new Looker Studio report to your BigQuery Views.

## 🏁 Professional Conclusion

This project successfully demonstrates the power of a modern cloud BI stack in the hospitality industry. By constructing a robust data pipeline from raw CSVs to an interactive Looker Studio dashboard via Google BigQuery, it provides an enterprise-grade framework for transforming fragmented data into strategic commercial intelligence.

## 🔗 Project Links

- **Looker Studio Dashboard:** [INSERT LOOKER STUDIO LINK]
- **Detailed Case Study:** [Read the Business Case Study in Docs](./docs/business_case_study.md)
- **Medium Article:** [Read the full write-up on Medium](#) 
- **LinkedIn Post:** [Join the discussion on LinkedIn](#)

---
*Developed by a passionate Business Intelligence Engineer dedicated to turning data into actionable business value.*
