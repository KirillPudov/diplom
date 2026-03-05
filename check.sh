set -xe
i=0
while [ $i -le 20 ];
do
    STATE=`kubectl get po -A | grep wordpress | awk '{print $4}'`
    if [ $STATE != 'Running' ]; 
    then 
        i=$((i + 1))
        echo "Iteration $i"
        sleep 10s && continue; 
    else 
        break
    fi 
done