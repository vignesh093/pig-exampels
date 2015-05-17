A = LOAD 'test/mark_data.dat' using PigStorage(',') as(name:chararray,dept:int,mark1:int,mark2:int,mark3:int,mark4:int) ;
B = FILTER A by dept matches 107;
dump B;
