# Grocery Management Application on Kubernetes

This repository contains Kubernetes manifests for deploying a grocery management web application with a MariaDB database backend. The application allows users to manage grocery entries with authentication.

## Project Structure

```
.
├── configmap.yaml              # Database initialization script
├── mariadb-Deployment.yaml     # MariaDB database deployment
├── mariadb-service.yaml        # MariaDB service for internal access
├── web-Deployment.yaml         # Web application deployment
└── web-LoadBalancer.yaml       # LoadBalancer service for web app
```

## Components Overview

### Database Layer
- **MariaDB Deployment** (`mariadb-Deployment.yaml`): Deploys a single replica of MariaDB 10.6 with the database "GROCERY" pre-configured
- **MariaDB Service** (`mariadb-service.yaml`): Provides internal cluster access to the database on port 3306
- **ConfigMap** (`configmap.yaml`): Contains the database initialization script that creates the `entries` table with sample user data

### Application Layer
- **Web Deployment** (`web-Deployment.yaml`): Deploys the grocery management web application using the `metejas/grocery-project:latest` Docker image
- **Web LoadBalancer** (`web-LoadBalancer.yaml`): Exposes the web application externally on port 80 via a LoadBalancer service

## How It Works

1. **Database Initialization**: When the MariaDB pod starts, it automatically runs the SQL script from the ConfigMap, creating the `entries` table and populating it with sample user entries.

2. **Application Deployment**: The web application is deployed as a containerized service that connects to the MariaDB database internally via the service `grocy-database-service`.

3. **External Access**: The LoadBalancer service provides external access to the web application, allowing users to interact with the grocery management interface.

4. **Data Flow**: Users can log in and manage grocery entries through the web interface, with all data stored in the MariaDB database.

## Prerequisites

- Kubernetes cluster (local or cloud-based)
- `kubectl` configured to access your cluster
- Docker registry access to `metejas/grocery-project:latest` image

## Deployment Instructions

### Deploy All Components
```bash
kubectl apply -f .
```

### Deploy Individually
```bash
# Deploy database initialization
kubectl apply -f configmap.yaml

# Deploy MariaDB
kubectl apply -f mariadb-Deployment.yaml
kubectl apply -f mariadb-service.yaml

# Deploy web application
kubectl apply -f web-Deployment.yaml
kubectl apply -f web-LoadBalancer.yaml
```

### Verify Deployment
```bash
# Check pod status
kubectl get pods

# Check services
kubectl get services

# Check deployments
kubectl get deployments
```

### Access the Application
Once deployed, get the external IP of the LoadBalancer service:
```bash
kubectl get service grocery-web-service
```

Access the application at `http://<EXTERNAL-IP>`

## Configuration

### Database Credentials
- Root Password: `989878`
- Database Name: `GROCERY`
- Port: `3306`

### Environment Variables
The MariaDB deployment uses the following environment variables:
- `MYSQL_ROOT_PASSWORD`: Database root password
- `MYSQL_DATABASE`: Database name to create

## Scaling

### Scale the Web Application
```bash
kubectl scale deployment grocery-web --replicas=3
```

### Scale the Database
Note: For production, consider using StatefulSets for MariaDB with persistent volumes.
```bash
kubectl scale deployment mariadb --replicas=2
```

## Troubleshooting

### Check Pod Logs
```bash
# Web application logs
kubectl logs -l app=grocery-web

# Database logs
kubectl logs -l app=mariadb
```

### Database Connection Issues
Ensure the web application is configured to connect to `grocy-database-service:3306`

### Port Conflicts
Verify that ports 80 and 3306 are not in use by other services in the cluster.

## Cleanup

To remove all deployed resources:
```bash
kubectl delete -f .
```

## Security Considerations

- Database root password is hardcoded in the deployment (not recommended for production)
- Consider using Kubernetes Secrets for sensitive data
- Implement proper RBAC and network policies for production deployments
- Use persistent volumes for database data persistence</content>