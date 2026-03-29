# Restuarant_order_analysis_SQL_MySQL

## 📋 Project Overview

- This project involves acting as a Data Analyst for "Taste of the World Café," a restaurant with a diverse menu ranging from American to Asian cuisine. 

- The goal is to analyze the performance of a newly launched menu to identify high-performing items, low-performing items, and understand customer preferences.

## 🎯 Business Objectives

- The primary objective is to use SQL to extract actionable insights from the restaurant's database. 

### Key questions include:

- Menu Exploration: What is the variety and price range of the new menu?

- Order Analysis: What does the order volume look like, and what are the most popular categories?

- Customer Behavior: Which specific items are driving the most revenue and how do top customers interact with the menu?

## 📂 Dataset Description

### The analysis is performed on two primary tables:

- menu_items: Contains details about every item on the menu (Name, Category, Price).

- order_details: Contains transactional data (Order ID, Item ID, Date, Time).

🛠️ Tech Stack
Language: SQL

Tool: [MySQL Workbench]

## 🚀 Analysis Roadmap

### 1. Menu Exploration

- Find the number of items on the menu.

- Identify the least and most expensive items.

- Analyze the distribution of cuisines (American, Italian, Mexican, Asian).

### 2. Order Details Exploration

- Determine the date range of the dataset.

- Calculate total orders and total items ordered.

- Identify orders with the highest number of items.

### 3. Customer & Menu Insight (The "Deep Dive")

- Combine both tables using JOIN operations.

- Identify the most and least ordered items.

- Determine which cuisines are generating the most revenue.

- Analyze the ordering patterns of the highest-spending customers.

## 📈 Key Insights  

- Top Performer: The [Item Name] was the most ordered item, suggesting it's a fan favorite.

- Revenue Driver: While [Cuisine Type] had fewer orders, it generated the highest revenue due to premium pricing.

- Underperformers: Items like [Item Name] had fewer than 5 orders over the period and may be candidates for removal or promotion.

## 🏁 Conclusion

Based on the analysis, the Taste of the World Café should focus marketing efforts on their [Cuisine Type] offerings while considering a "combo deal" for the most frequently bought-together items to increase the average order value.
