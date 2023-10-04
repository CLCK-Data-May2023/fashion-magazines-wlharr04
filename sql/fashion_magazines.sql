SELECT 
    c.customer_name AS Customer,
    PRINTF('$%.2f', SUM(s.subscription_length * s.price_per_month)) AS 'Amount Due'
FROM orders o 
JOIN customers c ON o.customer_id = c.customer_id
JOIN subscriptions s ON o.subscription_id = s.subscription_id
WHERE o.order_status  = 'unpaid'
AND s.description = 'Fashion Magazine'
GROUP BY Customer;