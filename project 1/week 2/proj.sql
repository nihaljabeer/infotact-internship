SELECT * FROM nihal.cleaned_superstore;
# Total Sales, Profit, and Orders
select sum(sales), sum(profit), count(distinct order_ID) from cleaned_superstore;
# Average Order Value
select sum(Sales)/count(distinct order_ID) as avg_order_value from cleaned_superstore;
# Total Customers
select count(distinct Customer_ID) as total_customers from cleaned_superstore;

## Time-Based Analysis
# Sales by Year
select year,round(sum(Sales),2) as total_sales,round(sum(Profit),2) as total_profit from cleaned_superstore group by year order by Year;
# Sales by Month
select Month ,round(sum(Sales),2) as total_sales from cleaned_superstore group by Month order by Month;
# Sales by Weekday
select Weekday ,round(sum(Sales),2) as total_sales from cleaned_superstore group by Weekday order by total_sales desc;
## Category Analysis
# Sales and Profit by Category
select Sub-Category from cleaned_superstore;
select category, round(sum(sales),2) as total_sales,round(sum(Profit),2) as total_profit from cleaned_superstore group by Category order by total_sales desc;
# Top Sub-Categories by Sales
select Sub_Category, round(sum(sales),2) as total_sales from cleaned_superstore group by Sub_Category order by total_sales desc limit 10;
## Product Analysis
# Top 10 Products by Sales
select product_name, round(sum(sales),2) as total_sales from cleaned_superstore group by Product_Name order by total_sales desc limit 10;
# Top 10 Products by Profit
select product_name, round(sum(Profit),2) as total_profit from cleaned_superstore group by Product_Name order by total_profit desc limit 10;
# Top 10 Loss-Making Products
select product_name, round(sum(Profit),2) as total_profit from cleaned_superstore group by Product_Name order by total_profit asc limit 10;
## Customer Analysis
# Top 10 Customers by Sales
select Customer_Name,round(sum(Sales),2) as total_sales,round(sum(Profit),2) as total_profit from cleaned_superstore group by Customer_Name order by total_sales desc limit 10;
# Sales by Segment
select segment, round(sum(sales),2) as total_sales, count(distinct customer_id) as customers from cleaned_superstore group by Segment order by total_sales desc;
## Geographic Analysis 
# Sales by Country
select country, round(sum(sales),2) as total_sales,round(sum(profit),2) as total_profit from cleaned_superstore group by Country order by total_sales desc limit 10;
# Sales by Market
select market, round(sum(sales),2) as total_sales,round(sum(profit),2) as total_profit from cleaned_superstore group by Market order by total_sales desc;
## Shipping Analysis
# Shipping Cost by Ship Mode
select Ship_Mode, round(sum(Shipping_Cost),2) as total_Shipping_Cost,round(avg(Shipping_Cost),2) as avg_Shipping_Cost from cleaned_superstore group by Ship_Mode;
