helm uninstall sonarqube -n sonarqube
oc -n sonarqube delete secret custom-ca-certs
oc delete ns sonarqube
