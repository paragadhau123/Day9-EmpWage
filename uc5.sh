#!bin/bash -x

isfulltime=2
ispartime=1
EMP_RATE_PER_HRS=20
TOTAL_EMPWAGE=0
TOTAL_EMPHRS=0
NUM_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

while [ $TOTAL_EMPHRS -le $MAX_HRS_IN_MONTH ]
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

        empwage=$(( $emphrs * $EMP_RATE_PER_HRS ))
        TOTAL_EMPHRS=$(($TOTAL_EMPHRS+$emphrs ))
        TOTAL_EMPWAGE=$(( $TOTAL_EMPWAGE+$empwage ))

done

         echo "Total Employee Wage=$TOTAL_EMPWAGE"

