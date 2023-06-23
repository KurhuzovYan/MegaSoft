WITH count_of_months AS (
    SELECT project_id, extract(year from finish_date) * 12 + extract(month from finish_date) -
           extract(year from start_date) * 12 - extract(month from start_date) as months
    FROM project
    GROUP BY project_id
    ORDER BY extract(year from finish_date) * 12 + extract(month from finish_date) -
             extract(year from start_date) * 12 - extract(month from start_date) DESC
)
SELECT project_id, count()
FROM project
JOIN project_worker pw on project.project_id = pw.project_id
GROUP BY project_id;



SELECT
    p.project_id,
    SUM(w.salary * EXTRACT(MONTH FROM AGE(p.finish_date, p.start_date))) AS project_cost
FROM
    project p
        JOIN
    project_worker pw ON p.project_id = pw.project_id
        JOIN
    worker w ON pw.worker_id = w.worker_id
GROUP BY
    p.project_id;


