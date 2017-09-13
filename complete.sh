target=(default/pipeline-apiserver default/pipeline-apiserver-1 default/pipeline-apiserver-2 pipeline/apiserver pipeline/apiserver-1 pipeline/apiserver-2)
for i in "${target[@]}"
    do
        echo "start to complete $i"
	kirk services deploy $i --complete
        echo "success $i"
        sleep 3
done
