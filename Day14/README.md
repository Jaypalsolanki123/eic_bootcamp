## AWS Addons Installation:

```bash
# Navigate into the Terraform manifests directory for EKS with addons
jaypal@8RJX084:~$ cd Day14

# Initialize Terraform and download required providers/modules
jaypal@8RJX084:~$ terraform init

# Validate Terraform configuration syntax and structure
jaypal@8RJX084:~$ terraform validate

# Preview infrastructure changes before applying
jaypal@8RJX084:~$ terraform plan

# Create or update infrastructure without manual approval prompt
jaypal@8RJX084:~$ terraform apply -auto-approve

# List AWS EKS Addon Command
jaypal@8RJX084:~$ aws eks list-addons --cluster-name retail-dev-eksdemo1

# List Deployments
jaypal@8RJX084:~$ kubectl -n external-dns get deploy 

# List Pods
jaypal@8RJX084:~$ kubectl -n external-dns get pods 

# Verify External DNS Pod logs
jaypal@8RJX084:~$ kubectl -n external-dns logs -f -l app.kubernetes.io/name=external-dns
```