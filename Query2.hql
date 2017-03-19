CREATE TABLE Query2 (owneruserid int , score int ) row format delimited fields terminated by ‘,’;
LOAD DATA LOCAL INPATH 'Query2.csv' OVERWRITE INTO TABLE Query2;
SELECT [DISTINCT] owneruserid , sum(score) AS TotalScore from Query2 ORDER BY TotalScore DESC LIMIT 10;
