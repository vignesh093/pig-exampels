--leader in total marks
A = LOAD '/home/hduser/hadoop/pig_files/test_file2.dat' using PigStorage(' ') as (name:chararray,dept:int,m1:int,m2:int,m3:int);
B = foreach A generate name,m1+m2+m3 as marksum;
C = order B by marksum desc;
D = limit C 1; 
dump D;
