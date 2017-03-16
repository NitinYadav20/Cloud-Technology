A = LOAD 'Query1.csv' USING PigStorage(',') AS (Id:int, Score:int);
DUMP A;
B = ORDER A BY score DESC;
C = LIMIT B 11;
D = FOREACH C GENERATE Id, Score;
DUMP D;
