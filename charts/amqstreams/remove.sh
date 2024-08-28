helm uninstall amq-streams -n openshift-operators
oc -n openshift-operators get csv | grep amqstreams | awk '{print "oc -n openshift-operators delete csv "$1}' | sh 
