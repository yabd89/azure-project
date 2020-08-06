$resourceGroup = "EnhancingApplications"
az login
az aks install-cli
az aks create --resource-group $resourceGroup --name myAKSCluster --node-count 1 --enable-addons monitoring --generate-ssh-keys
az aks get-credentials --resource-group $resourceGroup --name myAKSCluster
kubectl get nodes
kubectl apply -f .\Project\azure-vote.yaml