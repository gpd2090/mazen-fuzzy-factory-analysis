-- =====================================================
-- MAVEN FUZZY FACTORY - FULL BUSINESS ANALYSIS
-- Analyst: [Garvit Upadhyay]
-- Tools Used: PostgreSQL
-- =====================================================

-- =====================================================
-- 1. DATA VALIDATION
-- =====================================================
-- Total Sessions
SELECT COUNT(*) AS total_sessions
FROM website_sessions;

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Total Revenue
SELECT SUM(price_usd) AS total_revenue
FROM orders;
-- =====================================================
-- 2. CHANNEL PERFORMANCE ANALYSIS
-- =====================================================
-- Sessions by Source & Campaign
SELECT 
    utm_source,
    utm_campaign,
    COUNT(DISTINCT website_session_id) AS sessions
FROM website_sessions
GROUP BY utm_source, utm_campaign
ORDER BY sessions DESC;
-- =====================================================
-- 3. CONVERSION RATE ANALYSIS
-- =====================================================
-- Conversion Rate by Channel
SELECT 
    ws.utm_source,
    ws.utm_campaign,
    COUNT(DISTINCT o.order_id) * 1.0 /
    COUNT(DISTINCT ws.website_session_id) AS conversion_rate
FROM website_sessions ws
LEFT JOIN orders o
    ON ws.website_session_id = o.website_session_id
GROUP BY ws.utm_source, ws.utm_campaign
ORDER BY conversion_rate DESC;
-- =====================================================
-- 4. REVENUE & PROFITABILITY ANALYSIS
-- =====================================================
-- Revenue per Session by Channel
SELECT 
    ws.utm_source,
    ws.utm_campaign,
    SUM(o.price_usd) AS total_revenue,
    COUNT(DISTINCT ws.website_session_id) AS total_sessions,
    SUM(o.price_usd) / COUNT(DISTINCT ws.website_session_id) AS revenue_per_session
FROM website_sessions ws
LEFT JOIN orders o
    ON ws.website_session_id = o.website_session_id
GROUP BY ws.utm_source, ws.utm_campaign
ORDER BY revenue_per_session DESC;
-- =====================================================
-- 5. PRODUCT PERFORMANCE ANALYSIS
-- =====================================================
-- Product Revenue & Profit
SELECT 
    p.product_name,
    COUNT(oi.order_item_id) AS units_sold,
    SUM(oi.price_usd) AS revenue,
    SUM(oi.price_usd - oi.cogs_usd) AS profit
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;
-- =====================================================
-- 6. TIME-BASED ANALYSIS
-- =====================================================
-- Monthly Revenue Trend
SELECT 
    DATE_TRUNC('month', created_at) AS month,
    SUM(price_usd) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;
-- =====================================================
-- 7. REFUND / RETURN ANALYSIS
-- =====================================================
-- Overall Refund Rate
SELECT 
    COUNT(DISTINCT r.order_item_id) * 1.0
    / COUNT(DISTINCT oi.order_item_id) AS refund_rate
FROM order_items oi
LEFT JOIN order_item_refunds r
    ON oi.order_item_id = r.order_item_id;
-- =====================================================
-- END OF ANALYSIS
-- =====================================================
