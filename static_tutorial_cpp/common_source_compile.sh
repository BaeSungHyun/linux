#!/bin/bash

g++ -c main.cpp -o main.o
g++ -c my_math.cpp -o my_math.o
g++ main.o my_math.o -o a.out
./a.out
