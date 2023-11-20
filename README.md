# AWS_EKS

terraform folders:
create the VPC/ EKS cluster/ node group/ IAM roles etc.,

Now we can run terraform.
terraform apply
To export Kubernetes context you can use aws eks ... command; just replace region and name of the cluster

aws eks --region us-east-1 update-kubeconfig --name demo
To check connection to EKS cluster run the following command:
kubectl get svc

k8s folders:
aws_test.yaml: this will create a pod, which use service account (IAM role 10_iam_test.tf)
private-lb.yaml and public-lb.yaml will create load balancer (NLB) in AWS account
autoscaler.yaml will create autoscaler and the service account (IAM role 11_iam_autoscaler.tf)

It's a good practice to check logs for any errors.


kubectl logs -l app=cluster-autoscaler -n kube-system -f
EKS cluster auto scaling demo¶
Verify that AG (aws autoscaling group) has required tags:

k8s.io/cluster-autoscaler/<cluster-name> : owned
k8s.io/cluster-autoscaler/enabled : TRUE
Split the terminal screen. In the first window run:


watch -n 1 -t kubectl get pods
In the second window run:


watch -n 1 -t kubectl get nodes
Now, to trigger autoscaling, increase replica for nginx deployment from 1 to 5.


kubectl apply -f k8s/deployment.yaml

