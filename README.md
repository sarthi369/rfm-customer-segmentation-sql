# 📊 RFM Customer Segmentation (SQL | Product Analytics)

## 🔍 Project Overview

Customer segmentation is essential for driving personalized marketing and improving retention. This project applies the **RFM (Recency, Frequency, Monetary)** model to segment users based on their behavior.

---

## 🎯 Business Problem

The business wants to:

* Identify high-value customers
* Detect inactive but valuable users
* Segment users for targeted marketing campaigns

---

## 🧠 Approach

### 1. Recency

* Days since last purchase

### 2. Frequency

* Number of transactions

### 3. Monetary

* Total revenue per user

---

## ⚙️ Methodology

1. Calculate RFM metrics
2. Assign scores using `NTILE(5)`
3. Segment users using business rules

---

## 🛠️ Tools Used

* MySQL Workbench
* SQL (CTEs, Window Functions)

---

## 📂 Project Structure

```
rfm-customer-segmentation-sql/
│
├── datasets/
├── sql/
├── outputs/
└── README.md
```

---

## 📊 Key Output

#### 🔹 Customer Segmentation Table

| user_id | r_score | f_score | m_score | customer_segment    |
| ------- | ------- | ------- | ------- | ------------------- |
| 104     | 5       | 5       | 4       | High Value          |
| 105     | 4       | 2       | 2       | New Customers       |
| 102     | 3       | 3       | 1       | Mid Value Customers |
| 101     | 2       | 4       | 5       | Loyal but At Risk   |
| 103     | 1       | 1       | 3       | Mid Value Customers |

This segmentation highlights different customer behaviors based on recency, frequency, and spending patterns, enabling targeted marketing and retention strategies.

---

## 📈 Key Insights

* **User 104** is a high-value customer with strong engagement and high spending → should be retained and nurtured
* **User 101** has high spending but low recency → indicates a **valuable but inactive user (reactivation opportunity)**
* **User 105** is a new customer → requires onboarding and engagement to improve retention
* Mid-value customers represent stable users with moderate activity → potential for upselling

---

## 🧠 Business Interpretation

* High-value users should be targeted with **loyalty programs and exclusive offers**
* At-risk high spenders should be re-engaged using **personalized campaigns and incentives**
* New users need **strong onboarding and early engagement strategies**
* Mid-value users can be converted into high-value customers through **cross-sell and upsell strategies**

---

## 🚀 Key Learnings

* Applied RFM segmentation using SQL
* Used window functions for scoring
* Converted raw transactional data into actionable business insights
* Built customer segments for real-world marketing use cases

---

## 📌 Conclusion

This project demonstrates how SQL can be used to transform raw customer transaction data into meaningful segments that drive business strategy and decision-making.

---

## 🔗 Future Improvements

* Build dashboard in Power BI / Tableau
* Add customer demographics for deeper segmentation
* Implement churn prediction models

---
