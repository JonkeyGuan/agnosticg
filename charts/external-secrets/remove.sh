oc delete -f ./resources/vault-secret-store.yaml

helm uninstall external-secrets -n external-secrets

oc delete ns external-secrets
