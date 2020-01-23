#!/bin/bash -x
echo "--------------------------------------------WELLCOME TO EMPLOYEE WAGE COMPUTATION--------------------------------------------"
EMPLOYEE_IS_PRESENT=1
EMPLOYEE_IS_ABSENT=0
WAGE_PER_HOUR=20
FULL_DAY_HOURS=8
DAILY_EMPLOYEE_WAGE=$((20*8))
random=$((RANDOM%2))

case  $random  in
		$EMPLOYEE_IS_PRESENT)
				echo "Daily wage is :" $DAILY_EMPLOYEE_WAGE
				;;
		$EMPLOYEE_IS_ABSENT)
				 echo "Daily wage is :" 0
            ;;
		*)
				 echo "Invalid input"
				;;
esac



