# 📱 Mobile Usage & Behavior Analysis

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![Pandas](https://img.shields.io/badge/Pandas-Latest-green.svg)](https://pandas.pydata.org/)
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow.svg)](https://powerbi.microsoft.com/)
[![License](https://img.shields.io/badge/License-MIT-red.svg)](LICENSE)

> A comprehensive analysis of mobile usage patterns from 7,000 users, exploring screen time trends, data consumption patterns, and battery performance across demographics to deliver actionable insights for digital well-being.

## 🎯 Project Overview

Mobile devices have become integral to modern life, shaping how we communicate, work, and entertain ourselves. This project provides deep insights into mobile usage behaviors across different demographics and device types.

### Key Objectives
- 📊 Analyze screen time, data usage, and battery drain patterns across age groups and device models
- 👥 Develop user segmentation model based on app installation and usage behaviors
- 🔋 Identify factors contributing to excessive power consumption and digital dependency
- 📈 Create interactive dashboards for visualizing insights and recommendations

## 🛠️ Tech Stack

| Category | Technologies |
|----------|-------------|
| **Data Analysis** | Python, Pandas, NumPy |
| **Visualization** | Power BI, Matplotlib, Seaborn |
| **Environment** | Jupyter Notebooks |
| **Version Control** | Git, GitHub |

## 📊 Dataset Overview

The dataset contains anonymized usage data from **7,000 mobile users** across five popular device models.

### Device Models Analyzed
- 📱 Google Pixel 5
- 🍎 iPhone 12  
- 🔥 OnePlus 9
- 📲 Samsung Galaxy S21
- 🚀 Xiaomi Mi 11

### Key Features
```
📋 Dataset Schema:
├── Age (years)
├── Gender (Male/Female)
├── Mobile_Model (5 categories)
├── Screen_Time_Daily_Hours
├── Data_Usage_Daily_MB
├── Battery_Drain_Daily_mAh
├── Apps_Installed_Count
└── App_Usage_Time_Daily_Minutes
```

## 🔍 Methodology

### 1. Data Preprocessing
- ✅ Handled missing values and outliers
- 🧹 Data cleaning and validation using Pandas
- 📏 Feature scaling and normalization

### 2. Exploratory Data Analysis
- 📈 Statistical analysis of usage patterns
- 🔗 Correlation analysis between variables
- 📊 Distribution analysis across demographics

### 3. User Segmentation Model
Developed a rule-based classification system to categorize users into five behavioral segments:

| Segment | Criteria | Risk Level |
|---------|----------|------------|
| 🟢 **Minimal** | Low app usage & installations | Very Low |
| 🔵 **Normal** | Moderate usage patterns | Low |
| 🟡 **Addicted** | High screen time | Medium |
| 🟠 **Risky** | Excessive app usage | High |
| 🔴 **Dangerous** | Critical dependency levels | Very High |

### 4. Dashboard Development
- 🎨 Interactive Power BI dashboard
- 📊 Real-time filtering and drill-down capabilities
- 📈 KPI tracking and trend analysis

## 💡 Key Insights

### 🎂 Age Demographics
- **Young Adults (18-30)**: Highest screen time averaging **5.7 hours/day**
- **Risk Distribution**: 65% of 'Risky' and 'Dangerous' users are under 30
- **Digital Dependency**: Strong correlation between age and addictive behavior patterns

### 🔋 Device Performance
| Device | Avg. Battery Drain (mAh/day) | Efficiency Rank |
|--------|------------------------------|-----------------|
| iPhone 12 | 1,580 | 5th (Highest drain) |
| Samsung Galaxy S21 | 1,520 | 4th |
| OnePlus 9 | 1,480 | 3rd |
| Google Pixel 5 | 1,450 | 2nd |
| Xiaomi Mi 11 | 1,420 | 1st (Most efficient) |

### 📱 Behavioral Patterns
- **Screen Time vs App Usage**: 0.85 correlation coefficient
- **Gender Differences**: Males show 12% higher data consumption
- **Weekend Effect**: 23% increase in screen time on weekends

## 🚀 Business Recommendations

### For Device Manufacturers
1. **Battery Optimization**: Focus on power management for high-performance devices
2. **User Analytics**: Implement built-in usage tracking features
3. **Parental Controls**: Enhanced monitoring for younger users

### For App Developers
1. **Digital Well-being**: Integrate usage timers and break reminders
2. **Engagement Balance**: Design features that promote healthy usage patterns
3. **Age-Appropriate Design**: Tailor interfaces based on demographic insights

### For End Users
1. **Self-Monitoring**: Use screen time tracking to maintain awareness
2. **Digital Detox**: Implement regular breaks from device usage
3. **App Management**: Regular cleanup of unused applications

## 📁 Repository Structure

```
mobile-usage-analysis/
│
├── 📁 data/
│   ├── raw/                    # Original dataset
│   └── processed/              # Cleaned and processed data
│
├── 📁 notebooks/
│   ├── 01_data_exploration.ipynb
│   ├── 02_user_segmentation.ipynb
│   └── 03_insights_analysis.ipynb
│
├── 📁 visualizations/
│   ├── dashboard_screenshots/
│   └── static_plots/
│
├── 📁 reports/
│   └── Mobile_Usage_Analysis_Report.pdf
│
├── 📁 src/
│   ├── data_preprocessing.py
│   ├── segmentation_model.py
│   └── visualization_utils.py
│
├── 📄 requirements.txt
├── 📄 .gitignore
└── 📄 README.md
```

## 🚀 Getting Started

### Prerequisites
```bash
Python 3.8+
Jupyter Notebook
Power BI Desktop (for dashboard)
```

### Installation
1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/mobile-usage-analysis.git
   cd mobile-usage-analysis
   ```

2. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Launch Jupyter Notebook**
   ```bash
   jupyter notebook
   ```

4. **Open the analysis notebooks** in the `notebooks/` directory

## 📊 Sample Visualizations

### User Segmentation Distribution
```
Minimal:    28% (1,960 users)
Normal:     35% (2,450 users)  
Addicted:   22% (1,540 users)
Risky:      12% (840 users)
Dangerous:   3% (210 users)
```

### Top Insights Dashboard
- 📈 Real-time usage metrics
- 🎯 Demographic breakdowns  
- 🔋 Device performance comparisons
- ⚠️ Risk factor analysis

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Contact & Connect

**Satyam Saurabh**
- 🔗 **LinkedIn**: [linkedin.com/in/satyam-saurabh](https://linkedin.com/in/satyam-saurabh)
- 📧 **Email**: satyam2610saurabh@gmail.com
- 💼 **Portfolio**: Currently pursuing B.S. Data Science & Programming at IIT Madras

---

⭐ **Found this project helpful? Please consider giving it a star!**

📊 **Interested in data science and analytics? Let's connect and collaborate!**
