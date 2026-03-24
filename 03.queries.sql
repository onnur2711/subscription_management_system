SELECT * FROM users;

SELECT * FROM subscriptions
WHERE status = 'active';

SELECT s.service_name, s.category
FROM subscriptions s
JOIN users u ON s.user_id = u.user_id
WHERE u.name = 'Rahul Sharma';


SELECT u.name, SUM(p.amount) AS total_spending
FROM users u
JOIN subscriptions s ON u.user_id = s.user_id
JOIN payments p ON s.subscription_id = p.subscription_id
WHERE p.status = 'paid'
GROUP BY u.name;


SELECT service_name, price
FROM subscriptions s
JOIN plans p ON s.subscription_id = p.subscription_id
WHERE p.billing_cycle = 'monthly';


SELECT s.service_name, p.price
FROM subscriptions s
JOIN plans p ON s.subscription_id = p.subscription_id
ORDER BY p.price DESC
LIMIT 1;


SELECT s.service_name, r.reminder_date
FROM reminders r
JOIN subscriptions s ON r.subscription_id = s.subscription_id
WHERE r.reminder_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);


SELECT status, COUNT(*) AS count
FROM subscriptions
GROUP BY status;

SELECT YEAR(payment_date) AS year, SUM(amount) AS total_spent
FROM payments
WHERE status = 'paid'
GROUP BY YEAR(payment_date);


SELECT AVG(price) AS avg_cost
FROM plans;


SELECT u.name, SUM(p.amount) AS total_spent
FROM users u
JOIN subscriptions s ON u.user_id = s.user_id
JOIN payments p ON s.subscription_id = p.subscription_id
GROUP BY u.name
ORDER BY total_spent DESC
LIMIT 1;


