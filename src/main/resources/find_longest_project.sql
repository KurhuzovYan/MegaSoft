WITH common_table_expression AS (SELECT project_id,
                    extract(year from finish_date) * 12 + extract(month from finish_date) -
                    extract(year from start_date) * 12 - extract(month from start_date) as month_count
             FROM project)
SELECT project_id, month_count
FROM common_table_expression
WHERE month_count = (SELECT max(month_count)
                     FROM common_table_expression)

