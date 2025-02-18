eksctl create cluster --name my-cluster --region us-east-1 --nodegroup-name my-nodes --node-type t3.small --nodes 1 --nodes-min 1 --nodes-max 2
aws eks --region us-east-1 update-kubeconfig --name my-cluster

kubectl get storageclass

kubectl apply -f pvc.yaml
kubectl apply -f pv.yaml
kubectl apply -f postgresql-deployment.yaml
kubectl apply -f postgresql-service.yaml
---
kubectl apply -f coworking.yaml
kubectl apply -f configmap.yaml
kubectl apply -f database-secret.yaml

psql -U myuser -d mydatabase


# Set up port-forwarding to `postgresql-service`
kubectl port-forward service/postgresql-service 5432:5432 
ps aux | grep 'kubectl port-forward' | grep -v grep | awk '{print $2}' | xargs -r kill

pip install -r requirements.txt

$env:DB_USERNAME="myuser"
$env:DB_PASSWORD="mypassword"
$env:DB_HOST="127.0.0.1"
$env:DB_PORT="5432"
$env:DB_NAME="mydatabase"
python app.py

curl 127.0.0.1:5153/api/reports/daily_usage
curl 127.0.0.1:5153/api/reports/user_visits
http://a2d477a104fe5412ea59d6b1850cb317-1784293309.us-east-1.elb.amazonaws.com:5153/api/reports/daily_usage
a2d477a104fe5412ea59d6b1850cb317-1784293309.us-east-1.elb.amazonaws.com:5153/api/reports/user_visits

docker build -t coworking .
docker run --network="host" test-coworking-analytics


aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 973820712093.dkr.ecr.us-east-1.amazonaws.com
docker build -t coworking .
docker tag coworking:latest 973820712093.dkr.ecr.us-east-1.amazonaws.com/coworking:latest
docker push 973820712093.dkr.ecr.us-east-1.amazonaws.com/coworking:latest

curl aabe0102f83134eb0bbf035a56ed2a2f-1463734127.us-east-1.elb.amazonaws.com:5153/api/reports/daily_usage

helm repo add bitnami https://charts.bitnami.com/bitnami
helm install postgresql-service bitnami/postgresql --set primary.persistence.enabled=false


kubectl get secret --namespace default postgresql-service -o jsonpath="{.data.postgresql-password}" | base64 --decode

kubectl port-forward --namespace default svc/postgresql-service 5432:5432 

ps aux | grep 'kubectl port-forward' | grep -v grep | awk '{print $2}' | xargs -r kill
kubectl config current-context

set PGPASSWORD=mypassword
psql --host=127.0.0.1 -U myuser -d mydatabase -p 5432 -f "1_create_tables.sql"
psql --host=127.0.0.1 -U myuser -d mydatabase -p 5432 -f "2_seed_users.sql"
psql --host=127.0.0.1 -U myuser -d mydatabase -p 5432 -f "3_seed_tokens.sql"

sudo systemctl restart postgresql  # Linux
net stop postgresql && net start postgresql  # Windows

apt update
apt install postgresql postgresql-contrib

aws iam attach-role-policy `
    --role-name "eksctl-my-cluster-nodegroup-my-nod-NodeInstanceRole-UY65rlcSUCvk" `
    --policy-arn "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"

aws eks create-addon --addon-name amazon-cloudwatch-observability --cluster-name my-cluster




apt update

apt install build-essential libpq-dev

pip install --upgrade pip setuptools wheel