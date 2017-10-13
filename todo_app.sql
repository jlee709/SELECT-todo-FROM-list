-- sql 

#### Initial Columns for `tasks`

-- | Column Name  | Datatype                | NULL  | Default           |
-- |--------------|-------------------------|-------|-------------------|
-- | id           | integer                 | false | auto incrementing |
-- | title        | character varying (255) | false |                   |
-- | description  | text                    | true  |                   |
-- | created_at   | timestamp (no tz)       | false | now()             |
-- | updated_at   | timestamp (no tz)       | true  |                   |
-- | completed    | boolean                 | false | false             |


-- #### Final Columns for `tasks`

-- | Column Name  | Datatype                | NULL  | Default           |
-- |--------------|-------------------------|-------|-------------------|
-- | id           | integer                 | false | auto incrementing |
-- | title        | character varying (255) | false |                   |
-- | description  | text                    | true  |                   |
-- | created_at   | timestamp (no tz)       | false | now()             |
-- | updated_at   | timestamp (no tz)       | false | now()             |
-- | completed_at | timestamp (no tz)       | true  | NULL              |

-- 1. Write a query to drop a database named `todo_app` if it exists
-- 1. Write a query to delete a user named `michael` if it exists
-- 1. Write a query to create a user named `michael` with an encrypted password `stonebreaker`\
-- 1. Write a query to create a database named `todo_app`

-- 1. Connect to the newly created database

-- 1. Write a query to create a table named `tasks` using the **Initial columns** detailed below
-- 1. Define column `id` as the table's primary key


IF EXISTS(select * from sys.databases where name='to_do')
DROP DATABASE yourDBname

-- CREATE DATABASE to_do

IF EXISTS(select user from sys.databases where name='michael')
DROP DATABASE to_do

-- CREATE DATABASE to_do

INSERT INTO users(first_name, password)
VALUES('michael', 'stonebreaker')

-- direct take from docs 
CREATE DATABASE todo_app
    [ [ WITH ] [ OWNER [=] user_name ]
           [ TEMPLATE [=] template ]
           [ ENCODING [=] encoding ]
           [ LC_COLLATE [=] lc_collate ]
           [ LC_CTYPE [=] lc_ctype ]
           [ TABLESPACE [=] tablespace ]
           [ CONNECTION LIMIT [=] connlimit ] ]










