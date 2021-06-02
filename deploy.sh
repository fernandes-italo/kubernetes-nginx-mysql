cd terraform

# iniciar terraform
terraform init

# alterar ambiente
terraform apply --auto-approve

cd ..

# obter credenciais do AKS
az aks get-credentials --resource-group rg-atividade-kubernetes --name atividade-aks --overwrite-existing

# subir configuração da aplicação
kubectl apply -f aks/config

# subir configuração da aplicação
kubectl apply -f aks/pods

# subir configuração da aplicação
kubectl apply -f aks/service

# verificar acesso do nginx pelo ip externo
# kubectl get service -n atividade-kubernetes 

# verificar ip do container do mysql
# kubectl describe pod/mysql  -n atividade-kubernetes

# acessar container do nginx e pingar container do mysql
# kubectl exec -it nginx -n atividade-kubernetes  -- sh
# apt-get update
# apt-get install inetutils-ping
# ping <IP DO MYSQL>
