# 🍽️ Restaurant Orders — SQL Analysis Project

---

## 📋 Executive Summary

This project analyzes a restaurant's transactional database to uncover patterns in menu performance, customer ordering behavior, and revenue generation. Using MySQL, I explored two core tables — `menu_items` and `order_details` — spanning **Q1 2023 (January–March)**. The analysis surfaces actionable insights around which cuisines and dishes drive the most value, how customers build their orders, and where the restaurant's highest-spending customers are concentrating their spend.

---

## 🧩 Business Problem

The restaurant management team wants to answer three key questions:

1. **Menu Optimization** — Is the current menu priced competitively across categories? Are there underperforming dishes that should be reconsidered?
2. **Order Patterns** — How large are typical orders, and are there outliers worth investigating?
3. **Customer Behavior** — What are high-spending customers ordering, and which menu categories are most popular among top spenders?

Without structured data analysis, these decisions are made on intuition alone — this project replaces guesswork with evidence.

---

## 🛠️ Methodology

The analysis was conducted in **three sequential objectives**, each building on the last:

**Objective 1 — Menu Exploration**
- Inventoried all 32 menu items across 4 cuisine categories (American, Asian, Mexican, Italian)
- Identified price range, category distribution, and average price per category
- Flagged the cheapest item (Edamame @ $5.00) and most expensive (Shrimp Scampi @ $19.95)

**Objective 2 — Order Details Exploration**
- Validated the date range of the dataset: **Jan 1, 2023 – Mar 31, 2023**
- Counted total orders (~5,370 unique orders) and total line items (~12,000+ rows)
- Identified orders with unusually high item counts (>12 items)

**Objective 3 — Customer Behavior Analysis**
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
