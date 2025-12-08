i=0
while [ $i -le 4 ]; 
do 
    if [ $(kubectl get po -A | grep wordpress | awk '{print $4}') != 'Running' ]; 
    then 
        export i=$(i + 1) && echo "Iteration $i" && sleep 1m && continue; 
    else 
        break
    fi 
done