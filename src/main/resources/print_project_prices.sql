WITH working_duration AS (
    SELECT project_id, extract(year from finish_date) * 12 + extract(month from finish_date) -
           extract(year from start_date) * 12 - extract(month from start_date) as months
    FROM project
    GROUP BY project_id
    ORDER BY extract(year from finish_date) * 12 + extract(month from finish_date) -
             extract(year from start_date) * 12 - extract(month from start_date) DESC
)
SELECT
    p.project_id,
    SUM(salary * months) AS project_cost
FROM project p
        JOIN
    project_worker pw ON p.project_id = pw.project_id
        JOIN
    worker w ON pw.worker_id = w.worker_id
        JOIN
    working_duration wd ON p.project_id = wd.project_id
GROUP BY
    p.project_id
ORDER BY project_cost DESC;


