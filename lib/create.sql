create table project (id INT PRIMARY KEY, title TEXT, category TEXT, funding_goal INT, start_date varchar(10), end_date varchar(10));

create table user (id INT primary KEY, name varchar(25), age INT);

CREATE TABLE pledge (id INT PRIMARY KEY, amount INT, user_id INT, project_id INT);