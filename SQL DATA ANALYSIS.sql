create database decodelabs_internship;

select * from `dataset for data analytics`;

#Total sales
select sum(TotalPrice) as Total_sales from `dataset for data analytics`;


#average total sales that were shipped and delivered
SELECT AVG(TotalPrice) AS average_successful_sales
FROM `dataset for data analytics` 
WHERE OrderStatus IN ('Shipped', 'Delivered');


#Total sales by order status
select sum(TotalPrice) as Total_sales, OrderStatus
 from `dataset for data analytics`
 group by OrderStatus 
 order by Total_sales desc;
 
 #Shipped and Delivered Products that generated the highest sales
 SELECT Product, 
       SUM(TotalPrice) AS total_revenue
FROM `dataset for data analytics` where OrderStatus in ('shipped', 'delivered')
GROUP BY Product
ORDER BY total_revenue DESC;

#Shipped and Delivered Products Purchased by Quantity
select Product, sum(Quantity) as Quantity_sold 
from `dataset for data analytics` where OrderStatus in ('shipped', 'delivered')
group by Product
order by Quantity_sold desc;


#Total shipped and delivered Products that were sold
select count(Product) as Total_products 
from `dataset for data analytics` 
where OrderStatus in ('shipped', 'delivered');

