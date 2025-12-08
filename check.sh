i=0
while [ $i -le 4 ]; 
do 
    if [ $(kubectl get po -A | grep wordpress | awk '{print $4}') != 'Running' ]; 
    then 
        i=$(i + 1) && echo "Iteration $i" && sleep 10s && continue; 
    else 
        break
    fi 
done