#!/bin/bash -x
echo "--------------------------------------------WELLCOME TO EMPLOYEE WAGE COMPUTATION--------------------------------------------"
WAGE_PER_HOUR=20;
EMPLOYEE_IS_PART_TIME=0;
EMPOLYEE_IS_FULL_TIME=1;
random=$((RANDOM%3))
case  $random  in
		$EMPLOYEE_IS_PART_TIME)
				work_hours=4;
				echo "Employee is working Part time"
				;;
		$EMPOLYEE_IS_FULL_TIME)
				work_hours=8
				echo "Employee is working full time"
            ;;
		*)
				work_hours=0
				echo "Emloyee is absent"
				;;
esac
DAILY_EMPLOYEE_WAGE=$(($WAGE_PER_HOUR*$work_hours))
echo "Daily employee wage is :" $DAILY_EMPLOYEE_WAGE

