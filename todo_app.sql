
DROP USER IF EXISTS michael;

CREATE USER michael WITH ENCRYPTED PASSWORD 'stonehead';

DROP DATABASE IF EXISTS todo_app;

CREATE DATABASE todo_app;
--table tasks 
CREATE TABLE TASKS (
  id integer,         
  title varchar(255),     
  description varchar(1024), 
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW(),
  completed boolean,
PRIMARY KEY(id)
);



--   1. create a new task, by only setting values (not defining which columns)
--   `id = default value`  
--   `title = 'Study SQL'`  
--   `description = 'Complete this exercise'`  
--   `created_at = now()`  
--   `updated_at = now()`  
--   `completed_at = NULL`


ALTER TABLE tasks DROP COLUMN IF EXISTS complete;

ALTER TABLE tasks ADD IF NOT EXISTS completed_at timestamp without time zone DEFAULT NULL;

ALTER TABLE tasks ALTER updated_at SET NOT NULL;

ALTER TABLE tasks ALTER updated_at SET DEFAULT NOW();



-- using the insert method 
INSERT INTO tasks (id, title, description, created_at, updated_at, completed_at)
VALUES(DEFAULT,'Study SQL', 'Complete this exercise', NOW(), NOW(), NULL);


--   1. create a new task  
--   `title = 'Study PostgreSQL'`  
--   `description = 'Read all the documentation'`  
--   1. select all the titles of tasks that are not yet completed
--   1. update the task with a title of `'Study SQL'` to be completed as of now
--   1. select all titles and descriptions of tasks that are not yet completed
--   1. select all fields of every task sorted by creation date in descending order
--   1. create a new task  
--   `title = 'mistake 1'`  
--   `description = 'a test entry'`  
--   1. create a new task  
--   `title = 'mistake 2'`  
--   `description = 'another test entry'`  
--   1. create a new task  
--   `title = 'third mistake'`  
--   `description = 'another test entry'`  
--   1. select title fields of all tasks with a title that includes the word `'mistake'`
--   1. delete the task that has a title of `mistake 1`
--   1. select title and description fields of all tasks with a title that includes the word `'mistake'`
--   1. delete all tasks that includes the word `'mistake'` in the title
--   1. select all fields of all tasks sorted by `title` in ascending order


