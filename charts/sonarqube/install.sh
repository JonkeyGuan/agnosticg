oc create ns sonarqube
# oc -n sonarqube create secret generic custom-ca-certs --from-file=cert-1.crt=custom-certs.crt
# helm install sonarqube . --set initContainers=true --set caCerts.secret=custom-ca-certs -f values.yaml -n sonarqube
helm install sonarqube . --set initContainers=true -f values.yaml -n sonarqube
