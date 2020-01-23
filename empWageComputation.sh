#!/bin/bash -x
echo "--------------------------------------------WELLCOME TO EMPLOYEE WAGE COMPUTATION--------------------------------------------"
WAGE_PER_HOUR=20;
EMPLOYEE_IS_PART_TIME=0;
EMPOLYEE_IS_FULL_TIME=1;
TOTAL_WORKING_DAYS_OF_MONTH=20;
total_work_hours_for_month=0
for (( i=1; i<=$TOTAL_WORKING_DAYS_OF_MONTH; i++ ))
do
	random=$((RANDOM%3))
	case  $random  in
		$EMPLOYEE_IS_PART_TIME)
			work_hours=4;
			total_work_hours_for_month=$(($total_work_hours_for_month+$work_hours))
			;;
		$EMPOLYEE_IS_FULL_TIME)
			work_hours=8
			total_work_hours_for_month=$(($total_work_hours_for_month+$work_hours))
         ;;
		*)
			work_hours=0
			total_work_hours_for_month=$(($total_work_hours_for_month+$work_hours))
			;;
	esac

done
MONTHLY_EMPLOYEE_WAGE=$(($total_work_hours_for_month*$WAGE_PER_HOUR))
echo "Monthly employee wage is :"$MONTHLY_EMPLOYEE_WAGE

