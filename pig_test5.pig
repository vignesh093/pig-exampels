--topper in dept 101
A = LOAD '/home/hduser/hadoop/pig_files/test_file2.dat' using PigStorage(' ') as (name:chararray,dept:int,m1:int,m2:int,m3:int);
B = foreach A generate name,dept,m1+m2+m3 as marksum;
C = filter B by dept == 101;
D = order C by marksum desc;
E = limit D 1; 
dump E;
