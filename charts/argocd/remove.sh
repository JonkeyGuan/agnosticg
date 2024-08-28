oc -n openshift-gitops delete ArgoCD openshift-gitops
oc -n openshift-gitops delete AppProject default
helm uninstall gitops -n openshift-gitops
oc delete ns openshift-gitops
