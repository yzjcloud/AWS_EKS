output "vpc_id" {
    description = "vpc id of eks demo"
    value = aws_vpc.main.id
}

output "igw" {
    description = "IGW of eks demo"
    value = aws_internet_gateway.igw.arn
}

output "private_subnet_1" {
    description = "private subnet 1"
    value = aws_subnet.private-us-east-1a.cidr_block
}

output "private_subnet_2" {
    description = "private subnet 2"
    value = aws_subnet.private-us-east-1b.cidr_block
}

output "public_subnet_1" {
    description = "public subnet 1"
    value = aws_subnet.public-us-east-1a.cidr_block
}
output "public_subnet_2" {
    description = "public subnet 2"
    value = aws_subnet.public-us-east-1b.cidr_block
}

output "route_table_private" {
    description = "the route table of private subnets"
    value = aws_route_table.private.arn
}

output "route_table_public" {
    description = "the route table of public subnets"
    value = aws_route_table.public.arn
}

output "IAM_cluster" {
    description = "the IAM role of eks cluster"
    value = aws_iam_role.demo.arn
}

output "EKS_cluster" {
    description = "the EKS cluster"
    value = aws_eks_cluster.demo.arn
}

output "IAM_EKS_nodes" {
    description = "the IAM role of EKS nodes"
    value = aws_iam_role.nodes.arn
}

output "EKS_nodes_group" {
    description = "EKS node group"
    value = aws_eks_node_group.private-nodes.arn
}

output "tls_certificate" {
    description = "the tls certificate of eks oidc"
    value = data.tls_certificate.eks
}

output "iam_penid_provider" {
    description = "the iam openid connect provider"
    value = aws_iam_openid_connect_provider.eks.id
}

output "iam_service_account" {
    description = "the IAM role will be used by service account"
    value = aws_iam_role.test_oidc.arn
}

output "eks_cluster_autoscaler_arn" {
  value = aws_iam_role.eks_cluster_autoscaler.arn
}
