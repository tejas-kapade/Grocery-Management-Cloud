# Grocery Management Cloud (DevOps + AKS)

## Overview

Grocery Management is an end-to-end cloud-native DevOps project demonstrating a complete CI/CD and infrastructure automation pipeline for a grocery web application.

Key components:
- Docker Compose local deployment (web + MariaDB)
- GitHub Actions CI pipeline (build & push Docker images)
- Terraform infrastructure provision (VM and startup automation)
- Azure Kubernetes Service (AKS) container orchestration


## Project status

- [x] Local development with Docker Compose
- [x] CI/CD pipeline on GitHub Actions
- [x] Infrastructure provisioning by Terraform
- [x] Production deployment to AKS


## Quick access

Default admin login:
- username: dmin
- password: 9090


## Repository contents

- docker-compose.yaml - local container orchestration (web + MariaDB)
- Dockerfile - web-app image definition
- kubernetes/ - Helm manifests for AKS deployment and services
- Terraform/ - scripts for Azure VM, VMSS, and network setup
- website/ - PHP/HTML application source code and database seed
- db-init/init.sql - MariaDB schema and seed statements


## Getting started (local environment)

1. Clone repository:
   `ash
   git clone https://github.com/Tejas-K90/Grocy-Management.git
   cd Grocery-Management-Cloud
   `
2. Start services with Docker Compose:
   `ash
   docker-compose up -d --build
   `
3. Open browser:
   - app: http://localhost (or configured web port)

4. Stop and cleanup:
   `ash
   docker-compose down
   `


## Database setup (MariaDB)

1. Create database:
   `sql
   CREATE DATABASE GROCERY;
   `
2. Import SQL dump:
   `ash
   mysql -u root -p GROCERY < db-init/init.sql
   `


## Web app deployment (Apache / PHP)

- Source files are under website/.
- Copy files to Apache document root (e.g., /var/www/html).
- Ensure PHP and MariaDB extensions are installed.
- Start Apache:
  `ash
  sudo systemctl start apache2
  `


## Azure infrastructure

This project uses these Azure services:
- Azure Kubernetes Service (AKS): managed cluster for container orchestration
- Azure Load Balancer: traffic distribution and high availability
- Virtual Machine Scale Set (VMSS): auto-scale VM fleet for infrastructure automation
- GitHub Actions: CI pipeline (build image, push to Docker Hub)


## Terraform workflow

1. Initialize:
   `ash
   cd Terraform
   terraform init
   `
2. Plan and apply:
   `ash
   terraform plan
   terraform apply -auto-approve
   `
3. Monitor startup script
   `ash
   watch -n 1 tail -n 40 /var/log/startup-script.log
   `


## Kubernetes deployment (AKS)

1. Apply Kubernetes manifests from kubernetes/:
   `ash
   kubectl apply -f kubernetes/
   `
2. Verify pod status:
   `ash
   kubectl get pods -n <namespace>
   `
3. Access application via external IP from load balancer.


## Documentation

For detailed setup and architectural diagrams, refer to:
- Project-Documentation.pdf


## Notes

- Ensure you have Azure CLI configured and authenticated before running Terraform.
- Update image tags and registry credentials in GitHub Actions workflow if required.


## License

This project is provided as-is for learning and demonstration purposes.

## Acknowledgements

- Built with Docker, Terraform, GitHub Actions, Azure AKS, MariaDB, PHP

