
current_namespace=socialnetwork
delete_types=('service' 'deployment' 'pvc' 'pv' 'configmap')
for delete_type in ${delete_types[@]}
  do
    kubectl get $delete_type --namespace=$current_namespace | awk '{print $1}' | xargs kubectl delete $delete_type --namespace=$current_namespace
  done
# kubectl get service --namespace=socialnetwork | awk '{print $1}' | xargs kubectl delete service --namespace=socialnetwork
# kubectl get pvc --namespace=socialnetwork | awk '{print $1}' | xargs kubectl delete pvc --namespace=socialnetwork
# kubectl get pv --namespace=socialnetwork | awk '{print $1}' | xargs kubectl delete pv --namespace=socialnetwork
# kubectl get configmap --namespace=socialnetwork | awk '{print $1}' | xargs kubectl delete configmap --namespace=socialnetwork
# kubectl get configmap --namespace=socialnetwork | awk '{print $1}' | xargs kubectl delete configmap --namespace=socialnetwork
