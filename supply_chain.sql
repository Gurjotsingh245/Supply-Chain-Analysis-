SELECT product_type, AVG(manufacturing_costs) AS AVG_Manufacturing_Costs FROM supply_chain_data
GROUP By product_type;

SELECT product_type, SUM(Profits) AS Total_profits
FROM 
(SELECT product_type,sku, (price - manufacturing_costs - shipping_costs) AS Profits FROM supply_chain_data) AS A
GROUP BY product_type
ORDER BY Profits DESC;

SELECT CASE 
		WHEN manufacturing_costs < 30 THEN 'Low_cost'
        WHEN manufacturing_costs BETWEEN 30 AND 60 THEN 'Medium_cost'
        ELSE 'High_cost'
        END AS Manufacturing_cost_bucket,
        avg(price) AS avg_prices
 FROm supply_chain_data
 GROUP BY Manufacturing_cost_bucket
 ORDER BY avg_prices DESC
 
 
 
 
 
 
 SELECT product_type,
        avg(lead_times) AS avg_lead_time
  FROM supply_chain_data
  GROUP BY product_type;
 
 SELECT CASE
        WHEN lead_times < 10 THEN 'short_lead_times'
        WHEN lead_times BETWEEN 10 AND 20 THEN 'Medium_lead_times'
        ELSE 'Long_lead_times'
        END AS lead_time_bucket,
        avg(availability) AS avg_availability
 FROM supply_chain_data
 GROUP BY lead_time_bucket
 ORDER BY avg(availability) DESC;
 
  SELECT CASE
        WHEN lead_times < 10 THEN 'short_lead_times'
        WHEN lead_times BETWEEN 10 AND 20 THEN 'Medium_lead_times'
        ELSE 'Long_lead_times'
        END AS lead_time_bucket,
        avg(stock_levels) AS avg_stock_levels
 FROM supply_chain_data
 GROUP BY lead_time_bucket
 ORDER BY avg(stock_levels) DESC;
 
 
 
 

 
 SELECT transportation_modes, COUNT(transportation_modes) AS Frequency
 FROM supply_chain_data
 GROUP BY transportation_modes
 ORDER BY COUNT(transportation_modes) DESC;
 
 SELECT transportation_modes,
        avg(costs) AS avg_costs
 FROM supply_chain_data
 GROUP BY transportation_modes
 ORDER BY avg(costs) DESC;
 
 SELECT transportation_modes,
        avg(lead_times) AS avg_lead_times
 FROM supply_chain_data
 GROUP BY transportation_modes
 ORDER BY avg(lead_times) DESC;
 
 SELECT routes, COUNT(routes) AS Frequency
 FROM supply_chain_data
 GROUP BY routes
 ORDER BY COUNT(routes) DESC;
 
  SELECT routes,
        avg(costs) AS avg_costs
 FROM supply_chain_data
 GROUP BY routes
 ORDER BY avg(costs) DESC;
 
 SELECT routes,
        avg(lead_times) AS avg_lead_times
 FROM supply_chain_data
 GROUP BY routes
 ORDER BY avg(lead_times) DESC;
 
 
 
 
 
 SELECT product_type, avg(defect_rates) AS avg_defect_rate
 FROM supply_chain_data
 GROUP BY product_type;
 
 SELECT CASE
        WHEN defect_rates < 1 THEN 'Low_defect_rate'
        WHEN defect_rates BETWEEN 1 AND 2 THEN 'Medium_defect_rate'
        ELSE 'High_defect_rate'
        END AS defect_rate_bucket,
        avg(manufacturing_costs) AS avg_manufacturing_costs
 FROM supply_chain_data
 GROUP BY defect_rate_bucket;





SELECT CASE
       WHEN production_volumes < 250 THEN 'Low_production_volume'
       WHEN production_volumes BETWEEN 250 AND 700 THEN 'Medium_production_volume'
       ELSE 'High_production_volume'
       END AS production_volume_bucket,
       avg(number_of_products_sold) AS avg_sales_quantity
FROM supply_chain_data
Group BY production_volume_bucket
ORDER BY avg_sales_quantity DESC;

SELECT CASE
       WHEN production_volumes < 250 THEN 'Low_production_volume'
       WHEN production_volumes BETWEEN 250 AND 700 THEN 'Medium_production_volume'
       ELSE 'High_production_volume'
       END AS production_volume_bucket,
       avg(stock_levels) AS avg_stock_levels
FROM supply_chain_data
Group BY production_volume_bucket
ORDER BY avg_stock_levels DESC;

SELECT CASE
       WHEN production_volumes < 250 THEN 'Low_production_volume'
       WHEN production_volumes BETWEEN 250 AND 700 THEN 'Medium_production_volume'
       ELSE 'High_production_volume'
       END AS production_volume_bucket,
       avg(order_quantities) AS avg_order_quantities
FROM supply_chain_data
Group BY production_volume_bucket
ORDER BY avg_order_quantities DESC;
