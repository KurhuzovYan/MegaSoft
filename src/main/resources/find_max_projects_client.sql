WITH common_table_expression AS (SELECT name, count(*) AS project_count
                                 FROM client
                                          JOIN project p on client.client_id = p.client_id
                                 GROUP BY name, p.client_id)
SELECT name, project_count
FROM common_table_expression
WHERE project_count = (SELECT max(project_count)
                       FROM common_table_expression)