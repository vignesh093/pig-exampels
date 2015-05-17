--average marks for sam
A = LOAD '/home/hduser/hadoop/pig_files/test_file2.dat' using PigStorage(' ') as (name:chararray,dept:int,m1:int,m2:int,m3:int);
B = filter A by name matches 'sam';
C = foreach B generate name,dept,(m1+m2+m3)/3 as markavg; 
dump C;
