#!/bin/bash

#gprof test of performance and call graph
gcc -Wall -std=c99 -pg test_prof.c -o test_prof
./test_prof
gprof test_prof gmon.out > prof_output.txt

#memory leak check
gcc -Wall -std=c99 -o0 -g valgrind_test.c -o valgrind_test
#valgrind --leak-check=yes ./valgrind_test

#cache miss test
gcc -Wall -o0 -g -o perf_cache_test1 perf_cache_test1.c -lm
gcc -Wall -o0 -g -o perf_cache_test2 perf_cache_test2.c -lm

######################To see overall cache miss ###########################################
#perf stat -e cache-misses binXXXX

###########For more detailed information of which function trigger cache miss #############
#perf record -e cache-misses ./perf_cache_test1                 
#perf report


