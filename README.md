# Telecom Churn Analysis Report

## Overview
This project focuses on analyzing telecom customer data to evaluate churn rates, customer retention, and factors influencing customer churn. The goal is to provide actionable insights to reduce churn, improve customer retention, and enhance business performance.

The analysis includes:
- Churn rate trends and comparisons.
- Customer segmentation by contract type, payment method, and demographics.
- Key factors influencing churn (e.g., internet service, online security, tech support).

---

## Key Questions Answered

### 1️⃣ **What is the current churn rate, and how does it compare to the previous month?**
- The current churn rate is **26.54%**, with **73.46%** of customers retained.
- Compared to the previous month, the churn rate has increased/decreased (specific comparison not provided in the report).

### 2️⃣ **Which customer segments are most likely to churn?**
- **Contract Type**: Customers with **month-to-month contracts** have the highest churn rate (1.7K churned vs. 2.2K retained).
- **Payment Method**: Customers using **electronic checks** have the highest churn rate (1.1K churned vs. 1.3K retained).
- **Demographics**: 
  - **Non-senior citizens** without dependents have a higher churn rate (1.1K churned vs. 2.8K retained).
  - **Gender**: Churn rates are similar between males (0.9K churned) and females (0.9K churned).

### 3️⃣ **What factors influence churn?**
- **Internet Service**: Customers with **fiber optic** internet have the highest churn rate (439 churned vs. 1297 retained).
- **Online Security**: Customers without online security have a higher churn rate (42% churn rate).
- **Tech Support**: Customers without tech support have a higher churn rate (42% churn rate).
- **Streaming Services**: Customers without streaming TV or movies have a higher churn rate (34% churn rate).

---

## Tools and Technologies Used
- **SQL**: For data cleaning, normalization, and preprocessing.
- **DAX (Data Analysis Expressions)**: For creating calculated columns and measures in Power BI.
- **Power BI**: For data visualization and creating interactive dashboards.

---

## Project Structure
The project is organized into the following categories:

### 1. **Data Cleaning and Normalization**:
   - Used **SQL** to clean and preprocess raw telecom customer data.
   - Handled missing values, duplicates, and inconsistencies.
   - Normalized the data to ensure consistency and accuracy.

### 2. **Data Analysis**:
   - Performed **exploratory data analysis (EDA)** to answer key business questions.
   - Analyzed data by category:
     - **Churn Rate**: Evaluated churn rates by contract type, payment method, and demographics.
     - **Customer Segmentation**: Segmented customers based on tenure, gender, and senior citizen status.
     - **Churn Drivers**: Investigated factors influencing churn (e.g., internet service, online security, tech support).
   - Created visualizations (e.g., bar charts, pie charts, tables) to present insights.

### 3. **Reporting**:
   - Compiled findings into a comprehensive **Power BI report**.
---

## Key Insights

### Churn Rate Trends:
- **Current Churn Rate**: 26.54% of customers churned, while 73.46% were retained.
- **Contract Type**: Month-to-month contracts have the highest churn rate (1.7K churned vs. 2.2K retained).

### Customer Segmentation:
- **Payment Method**: Customers using electronic checks are more likely to churn (1.1K churned vs. 1.3K retained).
- **Demographics**: Non-senior citizens without dependents have a higher churn rate (1.1K churned vs. 2.8K retained).

### Churn Drivers:
- **Internet Service**: Fiber optic users have the highest churn rate (439 churned vs. 1297 retained).
- **Online Security**: Customers without online security have a 42% churn rate.
- **Tech Support**: Customers without tech support have a 42% churn rate.
- **Streaming Services**: Customers without streaming TV or movies have a 34% churn rate.
