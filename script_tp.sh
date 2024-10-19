#!/bin/bash

# Apply the deployment and service configurations
sudo microk8s kubectl apply -f deployment.yaml
sudo microk8s kubectl apply -f service.yaml

# Wait for the pods to be in the Running state
echo "Waiting for pods to be in Running state..."
sudo microk8s kubectl wait --for=condition=available --timeout=60s deployment/spring-boot-web-deployment

echo "Check the service at http://localhost:8080/docker-java-app/test"


# forwarding the port from internal to external
sudo microk8s kubectl port-forward deployment/spring-boot-web-deployment 8080:8080

