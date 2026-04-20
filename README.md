# 🍽️ Restaurant Orders — SQL Analysis Project

---

## 📋 Executive Summary

This project analyzes a restaurant's transactional database to uncover patterns in menu performance, customer ordering behaviour, and revenue generation. Using MySQL, I explored two core tables — `menu_items` and `order_details` — spanning **Q1 2023 (January–March)**. The analysis surfaces actionable insights around which cuisines and dishes drive the most value, how customers build their orders, and where the restaurant's highest-spending customers are concentrating their spend.

---

## 🧩 Business Problem

The restaurant management team wants to answer three key questions:

1. **Menu Optimization** — Is the current menu priced competitively across categories? Are there underperforming dishes that should be reconsidered?
2. **Order Patterns** — How large are typical orders, and are there outliers worth investigating?
3. **Customer Behaviour** — What are high-spending customers ordering, and which menu categories are most popular among top spenders?

Without structured data analysis, these decisions are made on intuition alone — this project replaces guesswork with evidence.

---

## 🛠️ Methodology

The analysis was conducted in **three sequential objectives**, each building on the last:

**Objective 1 — Menu Exploration**
- Inventoried all 32 menu items across 4 cuisine categories (American, Asian, Mexican, Italian)
- Identified price range, category distribution, and average price per category
- Flagged the cheapest item (Edamame @ $5.00) and the most expensive (Shrimp Scampi @ $19.95)

**Objective 2 — Order Details Exploration**
- Validated the date range of the dataset: **Jan 1, 2023 – Mar 31, 2023**
- Counted total orders (~5,370 unique orders) and total line items (~12,000+ rows)
- Identified orders with unusually high item counts (>12 items)

**Objective 3 — Customer Behaviour Analysis**
- Joined `menu_items` and `order_details` on `menu_item_id = item_id`
- Ranked items by order frequency to find the most and least popular dishes
- Identified the **top 5 highest-spend orders** and drilled into their category composition

All queries were written incrementally — moving from simple SELECTs to multi-table JOINs, GROUP BYs, HAVINGs, and subfiltering with WHERE IN clauses.

---

## 💡 Skills Demonstrated

| Skill | Application |
|---|---|
| **SQL Querying** | SELECT, WHERE, GROUP BY, ORDER BY, HAVING, LIMIT |
| **Aggregations** | COUNT, SUM, AVG, MIN, MAX, ROUND |
| **Joins** | LEFT JOIN across `menu_items` and `order_details` |
| **Filtering** | Category filters, date range checks, threshold filtering |
| **Data Exploration** | Profiling tables before analysis to understand shape and quality |
| **Business Thinking** | Translating business questions into SQL queries |

---

## 💻 Business Questions Answered Using SQL Query in MYSQL Workbench

**Objective 1 — Menu Exploration**

- 1. View menu item table
  <img width="589" height="436" alt="image" src="https://github.com/user-attachments/assets/a3145d76-a4e1-4b79-85ab-7daf3087fdfa" />
- 2. Find the number of items on the menu.
  <img width="586" height="228" alt="image" src="https://github.com/user-attachments/assets/53769f32-43b4-46db-8724-29e1811a1b36" />
- 3. What are the least and most expensive items on the menu?
  <img width="808" height="415" alt="image" src="https://github.com/user-attachments/assets/da0636e5-c913-4edc-8f6d-84516603556a" />
  <img width="701" height="238" alt="image" src="https://github.com/user-attachments/assets/642121c2-2eb1-432f-840c-a5ad68fa49ba" />
- 4. How many Italian dishes are on the menu?
  <img width="652" height="315" alt="image" src="https://github.com/user-attachments/assets/6ef53ada-7249-42ee-ba77-56b7d49c6021" />
- 5. What are the least and most expensive Italian dishes on the menu?
  <img width="905" height="602" alt="image" src="https://github.com/user-attachments/assets/4f626b76-a5d0-44ff-b435-01780c6c11cd" />
- 6. How many dishes are in each category?
  <img width="547" height="346" alt="image" src="https://github.com/user-attachments/assets/cb908de7-148e-45ae-86ea-62122a722ffa" />
- 7. What is the average dish price within each category?
  <img width="713" height="327" alt="image" src="https://github.com/user-attachments/assets/4827d1f1-180b-4a3b-aa62-3c23e7c054f7" />

**Objective 2 — Exploring the order_details table**

- 1. View the order_details table.

  <img width="613" height="340" alt="image" src="https://github.com/user-attachments/assets/c4f3929c-1404-458b-9369-631c64d99ed6" />

- 2. What is the date range of the table?
 
  <img width="771" height="236" alt="image" src="https://github.com/user-attachments/assets/e801457e-111d-43e6-a19a-05539f333e30" />

- 3. How many orders were made within this date range?

  <img width="796" height="208" alt="image" src="https://github.com/user-attachments/assets/26c27d30-b2ed-4ef5-a298-2809d74f5738" />

- 4. How many items were ordered within this date range?

  <img width="550" height="170" alt="image" src="https://github.com/user-attachments/assets/77c5165e-5a8f-4a7b-8766-9adb25108467" />

- 5. Which orders had the largest number of items?

  <img width="871" height="278" alt="image" src="https://github.com/user-attachments/assets/fb6fc550-01be-4223-b78c-eee2a9e53bb9" />

- 6. How many orders had more than 12 items?

  <img width="882" height="413" alt="image" src="https://github.com/user-attachments/assets/90dd919a-f34b-45c3-89c9-d5ece68029f8" />

**Objective: -3 Analyse the customer behaviour**

- 1. Combine the menu_items and order_details tables into a single table.
<img width="893" height="349" alt="image" src="https://github.com/user-attachments/assets/fbaf5114-2f3e-45d2-bf14-146755d97693" />

- 2. What were the least- and most-ordered items? What categories were they in?
<img width="653" height="476" alt="image" src="https://github.com/user-attachments/assets/23d91ea1-0b51-4f7d-973c-6cef0f40ea12" />
<img width="664" height="494" alt="image" src="https://github.com/user-attachments/assets/eb132376-7dce-401b-a26a-54e8cee70fe7" />

- 3. What were the top 5 orders that spent the most money?
<img width="664" height="435" alt="image" src="https://github.com/user-attachments/assets/f6a93239-1d6d-4d9e-8007-3e0e6e76b7b1" />

- 4. View the details of the highest spend order. What insights can you gather from the data?
<img width="651" height="412" alt="image" src="https://github.com/user-attachments/assets/5b6f00a9-c31a-4048-938d-856a9070740e" />

- 5. View the details of the top 5 highest spend orders. What insights can you gather from the data?
<img width="750" height="372" alt="image" src="https://github.com/user-attachments/assets/43e506ea-ca88-4a0a-bc86-22d47059398f" />


## 📊 Results & Business Recommendations

### Key Findings

- **Italian is the priciest category** (avg ~$16.75) and also has the most dishes (9 items), suggesting it's a flagship cuisine for the restaurant.
- **American dishes are the most affordable** (avg ~$10.07), anchoring value-seeking customers.
- **Hamburger and Edamame** were among the least ordered items — these may benefit from promotion or reconsideration.
- **Korean Beef Bowl and Cheeseburger** ranked among the most frequently ordered — strong candidates for combo deals or upsell pairing.
- **Top spending orders leaned heavily Italian** — order #440 (the highest-spend order) was dominated by Italian dishes, suggesting that high-value customers are drawn to the premium cuisine category.

### Recommendations

1. **Promote underperforming items** like Hamburger with targeted bundles or discounts to improve throughput.
2. **Expand the Italian menu** or introduce seasonal specials in that category — data shows top spenders gravitate toward it.
3. **Investigate large orders (>12 items)** — these may represent catering or group orders that could be captured with a dedicated group-order menu or pricing tier.
4. **Use Korean Beef Bowl and Cheeseburger as anchor items** in marketing — their high order frequency signals broad appeal.

---

## 🔭 Next Steps

- **Integrate time-of-day analysis** — Join `order_time` to identify peak ordering hours and optimize staffing accordingly.
- **Build a revenue dashboard** — Visualize category-level revenue trends over the Q1 period using a BI tool (e.g., Tableau or Power BI).
- **Cohort analysis** — If customer IDs become available, track repeat ordering behavior and build a customer loyalty profile.
- **Expand the date range** — Q1 data is a good baseline, but adding Q2–Q4 would allow seasonality analysis and year-over-year comparisons.
- **Menu price elasticity study** — Test whether price changes on mid-tier items (e.g., Veggie Burger, Cheese Quesadillas) affect order volume.

---

## 📁 Files in this Repository

| File | Description |
|---|---|
| `mysql_analysis_restaurant_orders.sql` | All SQL queries for the three-objective analysis |
| `menu_items.csv` | Raw menu data — 32 items across 4 categories |
| `order_details.csv` | Raw order transaction data — Q1 2023 |
| `restaurant_db_data_dictionary.csv` | Field definitions for both tables |

---

*Project completed as part of a data analytics portfolio. Database: MySQL · Domain: Restaurant & F&B Analytics*
