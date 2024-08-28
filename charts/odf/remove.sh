oc annotate storagecluster -n openshift-storage ocs-storagecluster uninstall.ocs.openshift.io/cleanup-policy=delete --overwrite
oc annotate storagecluster -n openshift-storage ocs-storagecluster uninstall.ocs.openshift.io/mode=forced --overwrite
oc delete -n openshift-storage storagesystem --all --wait=true
oc -n openshift-storage get CSIAddonsNode | awk '{print "oc -n openshift-storage delete CSIAddonsNode "$1}' | sh
helm uninstall odf -n openshift-storage
oc delete ns openshift-storage
