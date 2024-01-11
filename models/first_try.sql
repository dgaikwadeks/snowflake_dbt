{{ config(materialized='table') }}
WITH CTE AS(
SELECT DEPT_ID,SUM(SALARY) FROM {{source('test_prod','EMPLOYEE')}} GROUP BY 1)
SELECT * FROM CTE