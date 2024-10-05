-- Challenge
-- Write an SQL statement to create a new table named posts which should contain the following columns:

-- id
-- image_url
-- description
-- author_id
-- is_sponsored
-- Use data types that make the most sense given the column name. For ID columns, assume we can just use INTEGER.



CREATE TABLE posts (
  id INTEGER,
  image_url TEXT,
  description TEXT,
  author_id INTEGER,
  is_sponsored BOOLEAN
);

-- TEST SUITE, DON'T TOUCH BELOW THIS LINE --

pragma table_info('posts');