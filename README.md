Microservices AWS Kubernetes Project
This project sets up a microservices architecture on AWS EKS (Elastic Kubernetes Service), including a PostgreSQL database and a Python analytics service. It provides configurations and deployment files for both cloud and local environments.

Project Structure
analytics/: Python analytics service

app.py: Main application logic
config.py: Configuration settings
requirements.txt: Python dependencies
db/: SQL scripts for PostgreSQL

1_create_tables.sql: Create tables
2_seed_users.sql: Seed user data
3_seed_tokens.sql: Seed token data
deployment/: Kubernetes YAML files

configmap.yaml: Environment variables configuration
coworking.yaml: Python analytics service deployment
postgresql-deployment.yaml: PostgreSQL deployment
postgresql-service.yaml: PostgreSQL service definition
pv.yaml: Persistent volume configuration
pvc.yaml: Persistent volume claim
deployment-local/: Local deployment configurations

screen/: Screenshots of the deployment process

buildspec.yaml: AWS CodeBuild configuration

Dockerfile: Docker image build instructions for the Python service

LICENSE.txt: License information

README.md: Project documentation

Getting Started
Prerequisites
AWS CLI
kubectl
Docker
PostgreSQL
Deployment
Run the following command to deploy the services to your Kubernetes cluster:

kubectl apply -f deployment/
Local Development
Use configurations in deployment-local/ for local testing before deploying to AWS.

License
This project is licensed under the MIT License.