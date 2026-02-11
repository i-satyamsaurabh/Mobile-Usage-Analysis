# Mobile Usage & Behaviour Analysis

> Uncovering digital habits, dependency risks, and device trends across 7,500+ users using Python and Power BI.

![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=flat&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-150458?style=flat&logo=pandas&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=flat&logo=powerbi&logoColor=black)
![Status](https://img.shields.io/badge/Status-Completed-2ecc71?style=flat)

---

## 📌 Overview

This end-to-end data analysis project explores mobile usage patterns, digital well-being risks, and device performance across a dataset of **7,500 user records**. It combines Python-based exploratory data analysis (EDA) with an interactive 4-page Power BI dashboard to surface actionable insights.

---

## 🎯 Objectives

- Analyze screen time and data usage patterns across age groups and genders
- Identify users at risk of **digital dependency** using custom thresholds
- Evaluate **battery drain and charging behavior** across 5 device models
- Build a **5-level behavior classification system** (Minimal → Dangerous)
- Develop an **interactive Power BI dashboard** for business stakeholders

---

## 🗂️ Dataset

| Property | Details |
|----------|---------|
| **Records** | 7,500 users |
| **Features** | 14 columns |
| **Missing Values** | None |
| **Duplicates** | None |

**Key Columns:** `user_id`, `age`, `age_group`, `gender`, `device_model`, `os`, `avg_screen_time_hrs`, `daily_data_gb`, `app_count`, `battery_drain_pct`, `charging_freq`, `primary_use`, `usage_score`, `behaviour_category`

**Demographics Snapshot:**
- 🧑‍💼 Age Groups: 26–35 (39.9%), 36–45 (32.4%), 18–25 (16.8%), 46–60 (10.9%)
- 👤 Gender: Male 54.5% | Female 45.5%
- 📱 Devices: iPhone 14, Samsung Galaxy S24, Xiaomi 13, Google Pixel 8, OnePlus 11
- 🤖 OS: Android 69.2% | iOS 30.8%

---

## 🔧 Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python (Pandas, NumPy) | Data cleaning, manipulation, feature engineering |
| Matplotlib, Seaborn | Static visualizations (10 charts) |
| Power BI | Interactive 4-page business dashboard |
| Excel | Data review and cross-validation |

---

## ⚙️ Methodology

```
1. Data Loading & Validation
       ↓
2. Exploratory Data Analysis (EDA)
       ↓
3. Feature Engineering
   - Risk_Indicator  →  Screen time > 8 hrs AND app count > 70
   - Behaviour_Class →  Normalized score from screen time + app count
       ↓
4. Visualization  →  10 charts (300 DPI)
       ↓
5. Power BI Dashboard  →  4 pages, 5 slicers, DAX measures
```

---

## 📊 Key Findings

### 1. 🔴 Digital Dependency Risk
- **6.03%** of users (452 out of 7,500) flagged as **high-risk**
- Highest concentration in the **26–35 age group** (189 users)
- Younger users (18–34) average **6.61 hrs/day** of screen time

### 2. 📱 Device & Battery Insights
- **Google Pixel 8** leads battery drain at **80.82%/day**
- Dangerous-level users charge **1.34×/day** vs 0.15×/day for Minimal users
- Device model has less impact on usage than **user behavior**

### 3. 🤖 OS Market Dynamics
- Android holds **69.2%** share, consistent across all age groups
- Near-equal data consumption: Android (2.45 GB) vs iOS (2.41 GB)

### 4. 📋 Usage Patterns
- Primary uses: Work (36.1%) → Social (34.2%) → Mixed (17.2%) → Gaming (12.5%)
- Average screen time: **6.41 hrs/day**
- Strong correlation between screen time and usage score (**r = 0.891**)

### 5. 🧩 Behavior Classification Results

| Class | Users | Share |
|-------|-------|-------|
| Light | 5,441 | 72.5% |
| Moderate | 1,258 | 16.8% |
| Minimal | 732 | 9.8% |
| Heavy | 67 | 0.9% |
| Dangerous | 2 | 0.03% |

---

## 🖥️ Power BI Dashboard

The dashboard has **4 pages** with synchronized slicers (Age Group, Gender, OS, Device, Behaviour Class):

| Page | Content |
|------|---------|
| **Executive Summary** | KPI cards, behavior distribution, OS share, screen time by age |
| **Demographic Insights** | Gender & age analysis, OS preferences, primary usage categories |
| **Digital Well-being & Risk** | Risk distribution, scatter plot, usage score histogram, risk table |
| **Device & Battery** | Battery drain, charging frequency, device market share treemap |

**DAX Measures used:** `High Risk %`, `Avg Screen Time`, `Young Users Avg Screen Time`, `Dangerous Users`, and more.

---

## 📁 Project Structure

```
mobile-usage-behaviour-analysis/
│
├── data/
│   └── user_behavior_dataset.csv
│
├── notebooks/
│   └── EDA.ipynb
│
├── visuals/
│   └── (10 exported charts @ 300 DPI)
│
├── dashboard/
│   └── BI_Dashboard.pbix
│
└── README.md
```

---

## 🚀 Getting Started

```bash
# 1. Clone the repository
git clone https://github.com/your-username/mobile-usage-behaviour-analysis.git
cd mobile-usage-behaviour-analysis

# 2. Install dependencies
pip install pandas numpy matplotlib seaborn jupyter

# 3. Launch the notebook
jupyter notebook notebooks/EDA.ipynb
```

> For the Power BI dashboard, open `dashboard/BI_Dashboard.pbix` in **Power BI Desktop**.

---

## 🔮 Future Scope

- 🤖 Machine learning models for predicting digital dependency
- 📅 Time-series analysis to track usage trends over time
- 🌍 Geospatial analysis with location data
- ⚡ Real-time dashboard with live data integration
- 📲 App category-level usage breakdown

---

## 👤 Author

**Satyam Saurabh**

[![Email](https://img.shields.io/badge/Email-satyam2610saurabh%40gmail.com-D14836?style=flat&logo=gmail&logoColor=white)](mailto:satyam2610saurabh@gmail.com)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/satyam-saurabh)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=flat&logo=github&logoColor=white)](https://github.com/i_satyamsaurabh)

---

*This project was built for educational and portfolio purposes to demonstrate skills in data analysis, visualization, and business intelligence.*
