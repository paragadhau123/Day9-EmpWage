#!bin/bash -x

isfulltime=2
ispartime=1
EMP_RATE_PER_HRS=20
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

