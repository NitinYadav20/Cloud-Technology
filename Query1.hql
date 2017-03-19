CREATE TABLE Query1 (id int,  score int ) row format delimited fields terminated by ‘,’;
LOAD DATA LOCAL INPATH 'Query1.csv' OVERWRITE INTO TABLE Query1;
SELECT [DISTINCT] id, score  FROM Query1 ORDER BY score DESC LIMIT 10;
