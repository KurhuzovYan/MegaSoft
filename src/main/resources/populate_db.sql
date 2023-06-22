INSERT INTO worker (name, birthday, level, salary)
VALUES
    ('Yan', '1996-02-13', 'Junior', 500),
    ('Oleg', '1999-11-24', 'Junior', 700),
    ('Masha', '1989-07-03', 'Middle', 1500),
    ('Lina', '1992-04-15', 'Middle', 2000),
    ('Nikolay', '2001-01-05', 'Trainee', 200),
    ('Sergey', '2003-12-30', 'Trainee', 250),
    ('Anna', '1999-06-26', 'Senior', 5600),
    ('Evgeniy', '1994-08-29', 'Junior', 750),
    ('Georgiy', '1998-09-12', 'Middle', 2500),
    ('Viktoriya', '1996-04-28', 'Senior', 6000);

INSERT INTO client (name)
VALUES
    ('Petr'),
    ('Oleksiy'),
    ('Anton'),
    ('Dmitriy'),
    ('Ruslan');

INSERT INTO project (client_id, start_date, finish_date)
VALUES
    (2, '2022-05-18', '2023-01-28'),
    (1, '2021-02-08', '2022-08-01'),
    (4, '2019-06-24', '2019-07-24'),
    (3, '2023-04-27', '2023-06-16'),
    (5, '2015-12-07', '2020-10-28'),
    (2, '2020-07-21', '2022-01-30'),
    (5, '2021-09-15', '2022-05-11'),
    (1, '2023-02-11', '2023-04-17'),
    (2, '2018-05-19', '2022-01-02'),
    (4, '2013-01-20', '2023-03-12');

INSERT INTO project_worker (project_id, worker_id)
VALUES
    (1, 2),
    (1, 5),
    (2, 1),
    (2, 4),
    (3, 3),
    (4, 1),
    (4, 3),
    (5, 1),
    (5, 2),
    (5, 3),
    (5, 4),
    (5, 5)