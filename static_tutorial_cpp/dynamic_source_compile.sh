#! /bin/bash
g++ -c my_math.cpp -o my_math.o
g++ -shared -o libmy_math.so my_math.o
g++ -c main.cpp -o main.o
# g++ main.o my_math.so -o a.out
g++ main.o -L. -lmy_math -o a.out -Wl,-rpath,/home/baebae/static_tutorial_cpp
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/static_tutorial_cpp

./a.out
