output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public[*].id
}

output "ecr_repo_url" {
  value = aws_ecr_repository.app_repo.repository_url
}


output "ecs_task_execution_role_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}

resource "aws_ecs_cluster" "app_cluster" {
  name = "fargate-app-cluster"

  tags = {
    Name = "FargateAppCluster"
  }
}


output "ecs_cluster_name" {
  value = aws_ecs_cluster.app_cluster.name
}

output "ecs_task_definition" {
  value = aws_ecs_task_definition.app_task.arn
}

output "alb_dns_name" {
  value = aws_lb.app_alb.dns_name
}
