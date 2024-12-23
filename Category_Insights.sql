SELECT * FROM ecommerce_data_purchases
ORDER BY "CID" desc;

-- Total Revenue and Quantity Sold per Product Category
SELECT 
    "Product Category",
    count("TID") AS total_quantity_sold,
    SUM("Gross Amount") AS total_revenue
FROM ecommerce_data_purchases
GROUP BY "Product Category"
ORDER BY "total_revenue" desc;


--Total Sales per product category per year 
SELECT 
	"Product Category" as category,
    DATE_TRUNC('year', TO_DATE("Purchase Date", 'DD-MM-YYYY')) AS year,
    SUM("Gross Amount") AS total_sales 
FROM ecommerce_data_purchases 
GROUP BY "Product Category", year
ORDER BY category;


-- Total Sales contributed per Age Group per Product Category

SELECT 
	"Product Category" category,
	"Age Group" age_group,
	SUM("Gross Amount") total_sales
FROM ecommerce_data_purchases
GROUP BY "Product Category","Age Group"
ORDER BY category;




