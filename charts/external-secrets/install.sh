helm repo add external-secrets https://charts.external-secrets.io
helm repo update

helm install external-secrets external-secrets/external-secrets --values values.yaml -n external-secrets --create-namespace

while true 
do
    result=$(oc -n external-secrets get deploy external-secrets-cert-controller -o template='{{.status.availableReplicas}}')
    if [ ${result} -eq 1 ] 2>/dev/null; then 
        break
    fi
    echo 'Waiting for external-secrets-cert-controller is ready.'
    sleep 1
done

oc apply -f ./resources/vault-secret-store.yaml
