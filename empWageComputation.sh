#!/bin/bash -x
echo "--------------------------------------------WELLCOME TO EMPLOYEE WAGE COMPUTATION--------------------------------------------"
WAGE_PER_HOUR=20;
EMPLOYEE_IS_PART_TIME=0;
EMPOLYEE_IS_FULL_TIME=1;
TOTAL_WORKING_DAYS_OF_MONTH=20;
MAX_WOKING_HOURS_FOR_MONTH=100;
dayCount=0;
hoursCount=0;
function getWorkingHours(){
	case  $1  in
   	$EMPLOYEE_IS_PART_TIME)
         work_hours=4;
         ;;
      $EMPOLYEE_IS_FULL_TIME)
         work_hours=8
         ;;
    	*)
         work_hours=0
         ;;
	esac
	echo $work_hours
}
while [ $dayCount -lt $TOTAL_WORKING_DAYS_OF_MONTH -a $hoursCount -lt $MAX_WOKING_HOURS_FOR_MONTH ]
do
	((dayCount++))
	random=$((RANDOM%3))
	work_hours=$( getWorkingHours $random )
	hoursCount=$(($hoursCount+$work_hours))
done
MONTHLY_EMPLOYEE_WAGE=$(($hoursCount*$WAGE_PER_HOUR))
echo "Monthly employee wage is :"$MONTHLY_EMPLOYEE_WAGE
