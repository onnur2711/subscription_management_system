CREATE DATABASE subscription_db;
USE subscription_db;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE subscriptions (
    subscription_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    service_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    start_date DATE,
    end_date DATE,
    status ENUM('active', 'cancelled') DEFAULT 'active',
    
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);


CREATE TABLE plans (
    plan_id INT AUTO_INCREMENT PRIMARY KEY,
    subscription_id INT,
    plan_name VARCHAR(50),
    price DECIMAL(10,2),
    billing_cycle ENUM('monthly', 'yearly'),
    
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id)
);


CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    subscription_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_method VARCHAR(50),
    status ENUM('paid', 'failed') DEFAULT 'paid',
    
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id)
);


CREATE TABLE reminders (
    reminder_id INT AUTO_INCREMENT PRIMARY KEY,
    subscription_id INT,
    reminder_date DATE,
    is_sent BOOLEAN DEFAULT FALSE,
    
    FOREIGN KEY (subscription_id) REFERENCES subscriptions(subscription_id)
);