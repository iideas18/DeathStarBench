kubectl apply -f configmap/ --namespace=socialnetwork
kubectl apply -f pv/ 
kubectl apply -f pvc/ --namespace=socialnetwork
kubectl apply -f deployment/ --namespace=socialnetwork
kubectl apply -f service/ --namespace=socialnetwork


