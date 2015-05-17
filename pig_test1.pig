--sites visited by each user
A = LOAD '/home/hduser/hadoop/pig_files/test_file1.dat' using PigStorage(' ') as (user:chararray,sites:chararray,day:chararray);
B = group A by sites;
C = foreach B generate group;
dump C;
store C into '/home/hduser/hadoop/pig_files/out.dat';
