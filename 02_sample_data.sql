INSERT INTO users (name, email) VALUES
('Rahul Sharma', 'rahul@gmail.com'),
('Ananya Verma', 'ananya@gmail.com');


INSERT INTO subscriptions (user_id, service_name, category, start_date, end_date, status) VALUES
(1, 'Netflix', 'OTT', '2025-01-01', '2025-02-01', 'active'),
(1, 'Spotify', 'Music', '2025-01-10', '2025-02-10', 'active'),
(2, 'Amazon Prime', 'OTT', '2025-01-05', '2026-01-05', 'active'),
(2, 'Gym Membership', 'Fitness', '2025-01-01', '2025-03-01', 'cancelled');


INSERT INTO plans (subscription_id, plan_name, price, billing_cycle) VALUES
(1, 'Monthly', 499.00, 'monthly'),
(2, 'Monthly', 199.00, 'monthly'),
(3, 'Yearly', 1499.00, 'yearly'),
(4, 'Monthly', 1000.00, 'monthly');


INSERT INTO payments (subscription_id, amount, payment_date, payment_method, status) VALUES
(1, 499.00, '2025-01-01', 'UPI', 'paid'),
(2, 199.00, '2025-01-10', 'Card', 'paid'),
(3, 1499.00, '2025-01-05', 'UPI', 'paid'),
(4, 1000.00, '2025-01-01', 'Cash', 'failed');

INSERT INTO reminders (subscription_id, reminder_date, is_sent) VALUES
(1, '2025-01-28', FALSE),
(2, '2025-02-08', FALSE),
(3, '2025-12-25', FALSE),
(4, '2025-02-25', TRUE);
