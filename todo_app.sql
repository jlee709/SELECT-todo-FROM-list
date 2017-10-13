
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

--alter tables from updated time ADDs and DROP
ALTER TABLE tasks DROP COLUMN IF EXISTS complete;

ALTER TABLE tasks ADD IF NOT EXISTS completed_at timestamp without time zone DEFAULT NULL;

ALTER TABLE tasks ALTER updated_at SET NOT NULL;

ALTER TABLE tasks ALTER updated_at SET DEFAULT NOW();


INSERT INTO tasks (id, title, description, created_at, updated_at, completed_at)
VALUES(DEFAULT,'Study SQL', 'Complete this exercise', NOW(), NOW(), NULL);

INSERT INTO tasks (title, description)
VALUES('Study PostgreSQL', 'Read all the documentation');
-- select all the titles of tasks that are not yet completed
SELECT title FROM tasks WHERE completed_at IS NULL;
-- update the task with a title of 'Study SQL' to be completed as of now
UPDATE tasks SET completed_at = NOW() WHERE title = 'Study SQL';
-- select all titles and descriptions of tasks that are not yet completed
SELECT title, description FROM tasks WHERE tasks IS NULL;
-- select all fields of every task sorted by creation date in descending order
SELECT * FROM tasks ORDER BY created_at DESC;

INSERT INTO tasks (title, description)
VALUES('mistake 1', 'a test entry');


  
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





