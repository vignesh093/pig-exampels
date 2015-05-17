--maximum subject2(m2) value
A = LOAD '/home/hduser/hadoop/pig_files/test_file2.dat' using PigStorage(' ') as (name:chararray,dept:int,m1:int,m2:int,m3:int);
B = order A by m2 desc;
C = limit B 1;
D = foreach C generate m2;
dump D;
