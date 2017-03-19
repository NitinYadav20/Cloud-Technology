CREATE TABLE Query3 (owneruserid int , body string) row format delimited fields terminated by ‘,’;
LOAD DATA LOCAL INPATH 'Query3.csv' OVERWRITE INTO TABLE Query3;
SELECT owneruserid, count(body)  AS TotalScore from Query3 where body = (select split(body,'HADOOP’ , ‘hadoop’) ORDER BY owneruserid;
