Microservices AWS Kubernetes Project
This project sets up a microservices architecture on AWS EKS (Elastic Kubernetes Service). It manages the deployment of a PostgreSQL database and a Python analytics service, with configurations and deployment files provided for both cloud and local environments.

Project Structure
analytics/: Contains the Python analytics service.
app.py: Main application logic.
config.py: Configuration settings.
requirements.txt: Python dependencies.
db/: SQL scripts for setting up and seeding the PostgreSQL database.
1_create_tables.sql: Script for creating the necessary tables.
2_seed_users.sql: Script for seeding initial user data.
3_seed_tokens.sql: Script for seeding token data.
deployment/: Kubernetes YAML files for deploying services and resources.
configmap.yaml: Configuration map for environment variables.
coworking.yaml: Deployment for the Python analytics service.
postgresql-deployment.yaml: Deployment for the PostgreSQL database.
postgresql-service.yaml: Service definition for PostgreSQL.
pv.yaml: Persistent volume configuration.
pvc.yaml: Persistent volume claim.
deployment-local/: Configurations for deploying the services locally.
screen/: Screenshots related to the deployment process.
buildspec.yaml: AWS CodeBuild configuration file.
Dockerfile: Instructions for building the Docker image for the Python service.
LICENSE.txt: License information.
README.md: This file, documenting the project.

Getting Started
Prerequisites: Ensure AWS CLI, kubectl, Docker, and PostgreSQL are installed.
Deployment: Run kubectl apply -f deployment/ to deploy the PostgreSQL and Python services to your Kubernetes cluster.
Local Development: Use the configurations in deployment-local/ to test the services locally before deploying to AWS.
License
This project is licensed under the MIT License.