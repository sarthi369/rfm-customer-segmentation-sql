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

| user_id | r_score | f_score | m_score | segment           |
| ------- | ------- | ------- | ------- | ----------------- |
|   104	       5	5	   4	     High Value	    |	    
|   105	       4	2	   2	    New Customers   |
|   102	       3	3	   1	 Mid Value Customers|
|   101	       2	4	   5	  Loyal but At Risk |
|   103	       1	1	   3	Mid Value Customers |

---

## 📈 Key Insights

* High-value users contribute significantly to revenue and should be retained
* Some users show high spend but low recency → **reactivation opportunity**
* Low frequency users may require engagement strategies

---

## 🧠 Business Interpretation

* Users with high monetary but low recency are **valuable but inactive**
* These users can be targeted with:

  * Personalized offers
  * Re-engagement campaigns
  * Loyalty incentives

---

## 🚀 Key Learnings

* Applied RFM segmentation using SQL
* Used window functions for scoring
* Converted raw data into actionable business segments

---

## 📌 Conclusion

This project demonstrates how behavioral data can be transformed into meaningful customer segments to drive business decisions.

---

## 🔗 Future Improvements

* Build dashboard in Power BI
* Add customer demographics
* Implement predictive churn model

---
