target=(default/pipeline-apiserver default/pipeline-apiserver-1 default/pipeline-apiserver-2 pipeline/apiserver pipeline/apiserver-1 pipeline/apiserver-2)
#target=(default/pipeline-apiserver-1 default/pipeline-apiserver-2 pipeline/apiserver pipeline/apiserver-1 pipeline/apiserver-2)
for i in "${target[@]}"
    do
        echo "start to deploy $i"
        kirk services update $i --manual
        kirk services deploy $i --partial 3
        sleep 10
        kirk services deploy $i --partial 5
        sleep 10
        kirk services deploy $i --partial 8
        sleep 10
        kirk services deploy $i --partial 11
        sleep 10
       #kirk services deploy $i --complete
        echo "success $i"
        sleep 10
done
