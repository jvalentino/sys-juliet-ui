#!/bin/sh

kubectl port-forward --namespace default svc/sys-ui 3000:80 > build/sys-ui.log 2>&1 &
curl http://localhost:3000/

while [ $? -ne 0 ]; do
    kubectl port-forward --namespace default svc/sys-ui 3000:80 > build/sys-ui.log 2>&1 &
    curl http://localhost:3000/
    sleep 5
done
