create table if not exists employees
(
    id         serial primary key,
    name       varchar(25),
    surname    varchar(25),
    department varchar(25),
    salary     integer
);

insert into employees(name, surname, department, salary)
VALUES ('Roma', 'Pashchuk', 'IT', 1500),
       ('Max', 'Koval', 'HR', 1000);