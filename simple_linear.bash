#!/bin/bash

# all numbers multiplied by 10 because floating point not allowed
years=(11 13 15 20 22 29 30 32 32 37 39 40 40 41 45 49 51 53 59 60 68 71 79 82 87 90 95 96 103 105)
salary=(393430 462050 377310 435250 398910 566420 601500 544450 644450 571890 632180 557940 569570 570810 611110 679380 660290 830880 813630 939400 917380 982730 1013020 1138120 1094310 1055820 1169690 1126350 1223910 1218720)

years_test=(0 11 26 49 97 120 150) # test data

x_sum=0
y_sum=0
x_mean=0
y_mean=0
sq_sum=0 # bottom part of gradient formula
grad=0
y_int=0
y_int_1=0
top=0 # top part of gradient formula

for i in ${!years[@]}; do
  x_sum=$(($x_sum + ${years[i]}))
  y_sum=$(($y_sum + ${salary[i]}))
done

x_mean=$((x_sum/$i+1))
y_mean=$((y_sum/$i+1))

for j in ${!years[@]}; do
  sq_sum=$(($sq_squm + (${years[j]} - $x_mean)**2))
  top=$(($top + (${years[j]} - $x_mean) * (${salary[j]} - $y_mean)))
done

grad=$(($top/$sq_sum)) # gradient
y_int_1=$(($grad * $x_mean))
y_int=$(($y_mean - $y_int_1)) # y intercept


echo $grad $y_int
for i in ${!years_test[@]}; do
  echo $((($grad * ${years_test[i]} - $y_int)/100))
done
