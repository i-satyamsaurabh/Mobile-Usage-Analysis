/* =============================================================================
PROJECT: Mobile Usage Behavior Analysis
DESCRIPTION: 
    End-to-end SQL analysis of user behavior data (7,500+ records).
    Includes schema design, data ingestion, KPI tracking, and advanced 
    window functions for behavioral segmentation.
=============================================================================
*/

-- ==========================================================================
-- DATABASE & SCHEMA SETUP
-- ==========================================================================

-- Step 1: Create the database (Run this separately if needed)
-- CREATE DATABASE mobile_usage_analysis;

-- Step 2: Create the table with strict data typing
-- DROP TABLE IF EXISTS mobile_usage_data;

-- CREATE TABLE mobile_usage_data (
--     user_id                INTEGER PRIMARY KEY,
--     age                    INTEGER,
--     age_group              VARCHAR(20),      -- e.g., '18-25', '26-35'
--     gender                 VARCHAR(10),
--     device_model           VARCHAR(50),
--     os                     VARCHAR(10),      -- 'Android' or 'iOS'
--     avg_screen_time_hrs    NUMERIC(5,2),     -- Allows up to 999.99
--     daily_data_gb          NUMERIC(5,2),
--     app_count              INTEGER,
--     battery_drain_pct      NUMERIC(6,2),     -- Can exceed 100% if charged multiple times
--     charging_freq          INTEGER,
--     primary_use            VARCHAR(20),      -- 'Gaming', 'Social', 'Work'
--     usage_score            NUMERIC(6,2),     -- Calculated metric 0-100
--     behaviour_category     VARCHAR(20)       -- 'Minimal', 'Moderate', 'High', 'Dangerous'
-- );


-- ==========================================================================
-- DATA VALIDATION & QUALITY CHECKS
-- ==========================================================================

-- Check total row count 
SELECT COUNT(*) AS total_records FROM mobile_usage_data;

SELECT 
    COUNT(*) - COUNT(avg_screen_time_hrs) AS missing_screen_time,
    COUNT(*) - COUNT(battery_drain_pct) AS missing_battery
FROM mobile_usage_data;

-- Check Distribution of Categories
SELECT behaviour_category, COUNT(*) 
FROM mobile_usage_data
GROUP BY behaviour_category
ORDER BY COUNT(*) DESC;

-- ==========================================================================
-- CORE KPI DASHBOARD 
-- ==========================================================================

-- Overall System Averages
SELECT
    ROUND(AVG(avg_screen_time_hrs), 2) AS avg_screen_time,
    ROUND(AVG(daily_data_gb), 2)       AS avg_data_usage,
    ROUND(AVG(app_count), 0)           AS avg_app_count,
    ROUND(AVG(battery_drain_pct), 2)   AS avg_daily_battery_drain
FROM mobile_usage_data;

-- ==========================================================================
-- DEMOGRAPHIC ANALYSIS
-- ==========================================================================

SELECT
    age_group,
    ROUND(AVG(avg_screen_time_hrs), 2) AS avg_screen_time,
    ROUND(AVG(app_count), 0) AS avg_apps_installed
FROM mobile_usage_data
GROUP BY age_group
ORDER BY avg_screen_time DESC;

-- Gender Breakdown 
SELECT
    gender,
    ROUND(AVG(avg_screen_time_hrs), 2) AS avg_screen_time,
    ROUND(AVG(daily_data_gb), 2)       AS avg_data_usage
FROM mobile_usage_data
GROUP BY gender;

-- ==========================================================================
-- DEVICE & OS PERFORMANCE INSIGHTS
-- ==========================================================================

-- Operating System Efficiency
SELECT
    os,
    COUNT(*) as user_base,
    ROUND(AVG(avg_screen_time_hrs), 2) AS avg_screen_time,
    ROUND(AVG(battery_drain_pct), 2)   AS avg_battery_drain
FROM mobile_usage_data
GROUP BY os;

-- Device Specific Battery Hog Analysis
SELECT
    device_model,
    ROUND(AVG(battery_drain_pct), 2) AS avg_battery_drain,
    ROUND(AVG(avg_screen_time_hrs), 2) AS avg_screen_time,
    ROUND(AVG(battery_drain_pct) / NULLIF(AVG(avg_screen_time_hrs),0), 2) AS drain_per_hour_ratio
FROM mobile_usage_data
GROUP BY device_model
ORDER BY drain_per_hour_ratio ASC; 

-- ==========================================================================
-- BEHAVIORAL SEGMENTATION 
-- ==========================================================================

-- Percentage Distribution of Users by Behavior Category
SELECT
    behaviour_category,
    COUNT(*) AS users,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM mobile_usage_data
GROUP BY behaviour_category
ORDER BY users DESC;

-- Identify "Dangerous" High-Risk Users for Intervention
SELECT 
    user_id, 
    age, 
    avg_screen_time_hrs, 
    daily_data_gb, 
    usage_score
FROM mobile_usage_data
WHERE behaviour_category = 'Dangerous'
ORDER BY usage_score DESC
LIMIT 10;

-- ==========================================================================
-- WINDOW FUNCTIONS & RANKING
-- ==========================================================================

-- Rank users within each Age Group based on Usage Score
SELECT 
    user_id,
    age_group,
    usage_score,
    RANK() OVER (PARTITION BY age_group ORDER BY usage_score DESC) as usage_rank_in_age_group
FROM mobile_usage_data
LIMIT 20;

-- ==========================================================================
--  CTEs (Common Table Expressions)
-- ==========================================================================

-- Users with High Screen Time (> 6 hours) but Low Mobile Data (< 1 GB)
WITH HeavyUsers AS (
    SELECT * FROM mobile_usage_data
    WHERE avg_screen_time_hrs > 6.0
)
SELECT 
    user_id, 
    device_model, 
    avg_screen_time_hrs, 
    daily_data_gb,
    primary_use
FROM HeavyUsers
WHERE daily_data_gb < 1.0
ORDER BY avg_screen_time_hrs DESC;

-- ==========================================================================
-- REPORTING
-- ==========================================================================

-- Final Consolidated View for Power BI
SELECT
    age_group,
    behaviour_category,
    primary_use,
    COUNT(*) AS total_users,
    ROUND(AVG(usage_score), 2) AS avg_usage_score,
    ROUND(AVG(battery_drain_pct), 2) AS avg_drain
FROM mobile_usage_data
GROUP BY age_group, behaviour_category, primary_use
ORDER BY age_group, total_users DESC;

