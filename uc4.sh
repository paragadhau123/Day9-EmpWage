#!bin/bash -x

isfulltime=2
ispartime=1
EMP_RATE_PER_HRS=20
TOTALSALARY=0
NUM_OF_WORKING_DAYS=20

for (( day=1; day<=$NUM_OF_WORKING_DAYS; day++ ))
do

 empcheck=$((RANDOM%2))

 case $empcheck in 
      $isfulltime)
         emphrs=8
	;;
      $ispartime)
	 emphrs=4
	;;
 *)
	emphrs=0
        ;;
esac
        salary=$(( $emphrs * $EMP_RATE_PER_HRS ))
        echo $salary
        TOTALSALARY=$(( $TOTALSALARY+$salary ))

done

         echo "Total Salary=$TOTALSALARY"

