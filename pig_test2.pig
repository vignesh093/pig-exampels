--sites visited by user A
A = LOAD '/home/hduser/hadoop/pig_files/test_file1.dat' using PigStorage(' ') as (user:chararray,sites:chararray,day:chararray);
B = group A by user;
C = filter B by group matches 'A';
D = foreach C generate A.sites;
dump D;
