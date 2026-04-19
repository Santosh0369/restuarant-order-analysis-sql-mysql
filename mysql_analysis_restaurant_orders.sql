-- Objective 1 : Exploring the menu-items table

USE restaurant_db;

-- 1. View the menu_items table.

select * from menu_items;

-- 2. Find the number of items on the menu.

select count(*) from menu_items;

-- 3. What are the least and most expensive items on the menu?

select * from menu_items
order by price asc;

select * from menu_items
order by price desc;

-- 4. How many Italian dishes are on the menu?

select count(*) from menu_items
where category = 'Italian';


-- 5. What are the least and most expensive Italian dishes on the menu?

select * from menu_items
where category = 'Italian'
order by price asc;

select * from menu_items
where category = 'Italian'
order by price desc;

-- 6. How many dishes are in each category?

select category, count(item_name) 
from menu_items
group by category
order by count(item_name);


-- 7. What is the average dish price within each category?

select category, round(avg(price),2) as avg_price
from menu_items
group by category
order by avg_price;

-- Objective 2 : Exploring the order_details table

-- 1. View the order_details table.

select * from order_details;

-- 2. What is the date range of the table?

select min(order_date), max(order_date) from order_details;

-- 3. How many orders were made within this date range?

select count(distinct order_id) from order_details;

-- 4. How many items were ordered within this date range?

select count(*) from order_details;

-- 5. Which orders had the most number of items?

select item_id, count(order_id) as times_ordered from order_details
group by item_id
order by times_ordered desc;

-- 6. How many orders had more than 12 items?

select order_id, count(order_details_id) as count from order_details
group by order_id
having count > 12
order by count desc;

-- Objective:-3 Analyze the customer behaviour

-- 1. Combine the menu_items and order_details tables into a single table.

SELECT * FROM menu_items as mi
left join order_details as od
on mi.menu_item_id = od.item_id;
        
-- 2. What were the least and most ordered items? What categories were they in?

SELECT  
		item_name,
        category,
		count(order_details_id) as no_ordered 
        FROM menu_items 
	left join order_details
		on menu_item_id = item_id
	group by item_name, category
    order by no_ordered;
    
   SELECT  
		item_name,
        category,
		count(order_details_id) as no_ordered 
        FROM menu_items 
	left join order_details
		on menu_item_id = item_id
	group by item_name, category
    order by no_ordered desc;

-- 3. What were the top 5 orders that spent the most money?

select order_id, sum(price) as total_spend
from order_details od left join	 menu_items mi
	on od.item_id = mi.menu_item_id
group by order_id
order by total_spend desc
limit 5;

-- 4. View the details of the highest spend order. What insights can you gather from the data?

select category, count(item_id) as num_items	
from order_details od left join	 menu_items mi
	on od.item_id = mi.menu_item_id
where order_id = 440
group by category
order by num_items desc;

-- 5. View the details of the top 5 highest spend orders. What insights can you gather from the data?

select  category, order_id, count(item_id) as num_items	
from order_details od left join	 menu_items mi
	on od.item_id = mi.menu_item_id
where order_id in (440, 2075, 1957, 330, 2675)
group by category, order_id
order by num_items desc;


