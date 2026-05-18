## Helm Installation:

```bash
# Create a new directory named helm
mkdir helm

# Navigate into the helm directory
cd helm/

# Create a new Helm chart named jp
helm create jp

# List files and directories in the current location
ls

# Navigate into the jp Helm chart directory
cd jp/

# List Helm chart files and folders
ls

# Display Helm chart metadata configuration
cat Chart.yaml

# Install retail-store-sample-ui Helm chart version 1.0.0 with release name ui
helm install ui oci://public.ecr.aws/aws-containers/retail-store-sample-ui-chart --version 1.0.0

# List all Helm releases in the cluster
helm list

# List all Kubernetes namespaces
k get ns

# List all running pods in the current namespace
k get po

# Display Helm releases in YAML format
helm list --output=yaml

# List files and directories in the current location
ls

# List Kubernetes services
k get svc

# Forward local port 30080 to service ui port 80
k port-forward svc/ui 30080:80

# Upgrade ui release to chart version 1.2.4 and set application theme to orange
helm upgrade ui oci://public.ecr.aws/aws-containers/retail-store-sample-ui-chart --version 1.2.4 --set app.theme=orange

# Incorrect command entered instead of helm list
helm kist

# List all Helm releases after upgrade
helm list

# Show revision history of Helm release ui
helm history ui

# List pods and deployments together
k get po,deploy

# Display user-supplied values for Helm release ui
helm get values ui

# Display all values including default chart values for Helm release ui
helm get values ui --all

# Show rendered Kubernetes manifests for Helm release ui
helm get manifest ui

# Forward local port 30080 to service ui port 80 again
k port-forward svc/ui 30080:80

# Display current status of Helm release ui
helm status ui

# Display Helm release status along with Kubernetes resources
helm status ui --show-resources

# Validate and lint the local Helm chart
helm lint ui

# List files and directories in the current location
ls

# Navigate into charts directory
cd charts/

# List files inside charts directory
ls

# Move back to previous directory
cd ..

# List files and directories again
ls

# Navigate into jp directory
cd jp

# List contents of jp directory
ls

# Move back to parent directory
cd ..

# Remove jp directory forcefully and recursively
rm -rf jp/

# Create a fresh jp directory
mkdir jp

# Navigate into new jp directory
cd jp/

# Download and extract Helm chart version 1.3.0 locally
helm pull oci://public.ecr.aws/aws-containers/retail-store-sample-ui-chart --version 1.3.0 --untar

# Navigate into extracted Helm chart directory
cd retail-store-sample-ui-chart/
```
![alt text](<Screenshot 2026-05-18 120751.png>) 
![alt text](<Screenshot 2026-05-18 120857.png>) 
![alt text](<Screenshot 2026-05-18 120928.png>) 
![alt text](<Screenshot 2026-05-18 123333.png>) 
![alt text](<Screenshot 2026-05-18 123358.png>) 
![alt text](<Screenshot 2026-05-18 123427.png>) 
![alt text](<Screenshot 2026-05-18 123454.png>) 
![alt text](<Screenshot 2026-05-18 144453.png>)
