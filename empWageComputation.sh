#!/bin/bash -x
echo "--------------------------------------------WELLCOME TO EMPLOYEE WAGE COMPUTATION--------------------------------------------"
EMP_IS_PRESENT=1
EMP_IS_ABSENT=0
WAGE_PER_HR=20
FULL_DAY_HR=8
DAILY_EMP_WAGE=$((20*8))
random=$((RANDOM%2))
if [ $random -eq $EMP_IS_PRESENT ]
then
	echo "Employee is present"
	echo "Daily employee wage is:" $DAILY_EMP_WAGE

else
	echo "Employee is absent"
	echo "Daily employee wage is:" 0
fi


