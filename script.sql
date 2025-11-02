SELECT *
FROM superstore_data;

-- Remove duplicates
-- Standardize the data
-- Null values or blank values
-- Remove any columns


CREATE TABLE data_staging
LIKE superstore_data;

SELECT *
FROM data_staging;

INSERT data_staging
SELECT *
FROM superstore_data;