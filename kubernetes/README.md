# Kubernetes Manifests for Grocery Management Cloud

This folder contains all Kubernetes manifest files to deploy the Grocery Management application on Kubernetes.

## Project Structure

```
kubernetes/
├── 1-namespace.yaml          # Kubernetes namespace
├── 2-secret.yaml             # Database credentials (secrets)
├── 3-configmap.yaml          # Database initialization script
├── 4-storage-class.yaml      # Storage class for persistent volumes
├── 5-pvc.yaml                # Persistent volume claim for database
├── 6-database-service.yaml   # MariaDB service (headless)
├── 7-database-statefulset.yaml  # MariaDB StatefulSet
├── 8-web-service.yaml        # Web application service
├── 9-web-deployment.yaml     # PHP web app deployment
├── 10-ingress.yaml           # Ingress for external access (optional)
└── README.md                 # This file
```

## Prerequisites

1. **Kubernetes Cluster** (1.20+)
   - Minikube, Docker Desktop, Kind, or any managed K8s service (EKS, GKE, AKS)

2. **kubectl** CLI tool installed and configured

3. **Docker Image Already Built and Pushed** to a registry:
   ```bash
   # Build your image
   docker build -t your-registry/grocery-web:latest .
   
   # Push to registry
   docker push your-registry/grocery-web:latest
   ```

## Deployment Steps

### 1. Update Image Registry
Edit `9-web-deployment.yaml` and replace `<YOUR_DOCKER_REGISTRY>` with your actual registry:
```yaml
image: <YOUR_DOCKER_REGISTRY>/grocery-web:latest
```

Examples:
- Docker Hub: `docker.io/yourusername/grocery-web:latest`
- AWS ECR: `123456789.dkr.ecr.us-east-1.amazonaws.com/grocery-web:latest`
- Google GCR: `gcr.io/your-project/grocery-web:latest`

### 2. Apply Manifests in Order

```bash
# Navigate to kubernetes folder
cd kubernetes/

# Apply all manifests
kubectl apply -f 1-namespace.yaml
kubectl apply -f 2-secret.yaml
kubectl apply -f 3-configmap.yaml
kubectl apply -f 4-storage-class.yaml
kubectl apply -f 5-pvc.yaml
kubectl apply -f 6-database-service.yaml
kubectl apply -f 7-database-statefulset.yaml
kubectl apply -f 8-web-service.yaml
kubectl apply -f 9-web-deployment.yaml
kubectl apply -f 10-ingress.yaml

# OR apply all at once
kubectl apply -f .
```

### 3. Verify Deployment

```bash
# Check namespace
kubectl get namespace grocery-app

# Check all resources in namespace
kubectl get all -n grocery-app

# Check pods
kubectl get pods -n grocery-app
kubectl describe pod <pod-name> -n grocery-app
kubectl logs <pod-name> -n grocery-app

# Check services
kubectl get svc -n grocery-app

# Check database readiness
kubectl get statefulset -n grocery-app
```

### 4. Access the Application

**Option A: Using LoadBalancer** (Default)
```bash
kubectl get svc web-service -n grocery-app
# Get the EXTERNAL-IP and access via http://<EXTERNAL-IP>
# Note: On Minikube, use: minikube service web-service -n grocery-app
```

**Option B: Using Port Forwarding** (Development)
```bash
kubectl port-forward svc/web-service 8080:80 -n grocery-app
# Access via http://localhost:8080
```

**Option C: Using Ingress** (Production - requires ingress controller)
```bash
# Install nginx ingress controller first
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.0/deploy/static/provider/cloud/deploy.yaml

# Then update and apply 10-ingress.yaml with your domain
# Access via http://grocery.example.com
```

## Scaling

### Scale Web Replicas
```bash
kubectl scale deployment web --replicas=5 -n grocery-app
```

### Check Autoscaling (optional)
```bash
kubectl autoscale deployment web --min=3 --max=10 --cpu-percent=70 -n grocery-app
kubectl get hpa -n grocery-app
```

## Updating Application

### Update Docker Image and Redeploy
```bash
# Rebuild and push new image
docker build -t your-registry/grocery-web:v2.0 .
docker push your-registry/grocery-web:v2.0

# Update deployment with new image
kubectl set image deployment/web web=your-registry/grocery-web:v2.0 -n grocery-app

# Or edit the deployment directly
kubectl edit deployment web -n grocery-app
```

## Monitoring

### Check Logs
```bash
# Web app logs
kubectl logs -f deployment/web -n grocery-app

# Database logs
kubectl logs -f statefulset/mariadb -n grocery-app

# Follow logs from all pods
kubectl logs -f -l app=web -n grocery-app
```

### Check Resource Usage
```bash
kubectl top nodes
kubectl top pods -n grocery-app
```

## Troubleshooting

### Pod not starting?
```bash
kubectl describe pod <pod-name> -n grocery-app
kubectl logs <pod-name> -n grocery-app
```

### Database connection issues?
```bash
# Check if database pod is ready
kubectl get pod mariadb-0 -n grocery-app
kubectl logs mariadb-0 -n grocery-app

# Test database connection from web pod
kubectl exec -it <web-pod-name> -n grocery-app -- bash
# Inside pod: mysql -h mariadb-service -u root -p989878
```

### Persistent data not persisting?
```bash
# Check PVC status
kubectl get pvc -n grocery-app
kubectl describe pvc db-pvc -n grocery-app

# Check PV
kubectl get pv
```

## Cleanup

```bash
# Delete all resources in namespace
kubectl delete namespace grocery-app

# Or delete individual manifests
kubectl delete -f kubernetes/ -n grocery-app
```

## Important Notes

1. **Security**: Update the hardcoded password in `2-secret.yaml` for production
2. **Image Registry**: You must push your Docker image to a registry before deploying
3. **Storage**: Configure `4-storage-class.yaml` based on your infrastructure
4. **Domain**: Update domain in `10-ingress.yaml` if using Ingress
5. **Resources**: Adjust CPU/Memory requests and limits based on your needs
6. **High Availability**: The web deployment has 3 replicas and pod anti-affinity for HA
7. **Database**: Currently configured with 1 MariaDB replica; scale with caution (Galera recommended)

## Database Schema

The ConfigMap in `3-configmap.yaml` contains the database initialization SQL. Update with your complete schema from `db-init/init.sql`.

## Next Steps

1. Test locally with Minikube/Docker Desktop
2. Push to your private registry
3. Deploy to staging cluster
4. Set up monitoring (Prometheus, Grafana)
5. Configure logging (ELK, Loki)
6. Set up CI/CD pipeline (GitOps with ArgoCD, Flux)
7. Implement ingress with SSL certificates
