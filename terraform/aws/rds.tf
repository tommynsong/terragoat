resource "aws_rds_cluster" "app1-rds-cluster" {
  cluster_identifier                  = "app1-rds-cluster"
  allocated_storage                   = 10
  backup_retention_period             = 0
  deletion_protection                 = true
  iam_database_authentication_enabled = true
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "856f1bdd-5361-4064-97b2-5e620594916e"
  }
}

resource "aws_rds_cluster" "app2-rds-cluster" {
  cluster_identifier      = "app2-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 1
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "dfc9ae0f-2b76-40d6-9a09-7e6612084ad7"
  }
}

resource "aws_rds_cluster" "app3-rds-cluster" {
  cluster_identifier      = "app3-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "e7a06c54-360b-463f-aca6-922089c43c0b"
  }
}

resource "aws_rds_cluster" "app4-rds-cluster" {
  cluster_identifier      = "app4-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "801a5e3a-01e9-47ff-9a7d-46e057a4f64a"
  }
}

resource "aws_rds_cluster" "app5-rds-cluster" {
  cluster_identifier      = "app5-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "62c405f7-f754-4138-b398-cca36c96b603"
  }
}

resource "aws_rds_cluster" "app6-rds-cluster" {
  cluster_identifier      = "app6-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "fefb2408-5277-407f-8ed8-7e840c4f606a"
  }
}

resource "aws_rds_cluster" "app7-rds-cluster" {
  cluster_identifier      = "app7-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "07512160-cd7f-4cad-ad4f-079c3554304c"
  }
}

resource "aws_rds_cluster" "app8-rds-cluster" {
  cluster_identifier      = "app8-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "3ae9b62e-37fb-486d-a923-e37870e90b8c"
  }
}

resource "aws_rds_cluster" "app9-rds-cluster" {
  cluster_identifier      = "app9-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "9701bffd-229f-4284-a471-eab85567dfd3"
  }
}
