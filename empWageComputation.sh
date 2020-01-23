#!/bin/bash -x
echo "--------------------------------------------WELLCOME TO EMPLOYEE WAGE COMPUTATION--------------------------------------------"
EMP_IS_PRESENT=1
EMP_IS_ABSENT=0
random=$((RANDOM%2))
if [ $random -eq $EMP_IS_PRESENT ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
