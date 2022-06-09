resource "aws_rds_cluster" "app1-rds-cluster" {
  cluster_identifier      = "app1-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 0
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "6b616980-8b12-44c0-b0f8-2dae3daf8639"
  }
}

resource "aws_rds_cluster" "app2-rds-cluster" {
  cluster_identifier      = "app2-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 1
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "f579460c-f8dc-4391-a371-01999e70fae2"
  }
}

resource "aws_rds_cluster" "app3-rds-cluster" {
  cluster_identifier      = "app3-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "226772f7-3f98-430f-b27b-edfc9da4be0a"
  }
}

resource "aws_rds_cluster" "app4-rds-cluster" {
  cluster_identifier      = "app4-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "72a4d7a1-0923-490d-a2b4-34bea4370114"
  }
}

resource "aws_rds_cluster" "app5-rds-cluster" {
  cluster_identifier      = "app5-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "93e236e3-f7ee-4fd0-ba69-10d61842cb3d"
  }
}

resource "aws_rds_cluster" "app6-rds-cluster" {
  cluster_identifier      = "app6-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "0015c694-cd01-4c4a-b691-8a76b9d30e93"
  }
}

resource "aws_rds_cluster" "app7-rds-cluster" {
  cluster_identifier      = "app7-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "222ac045-470e-4c50-bc96-d869f442125e"
  }
}

resource "aws_rds_cluster" "app8-rds-cluster" {
  cluster_identifier      = "app8-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "3cf3c13c-a478-42a4-ab98-3d0ec0ced8d0"
  }
}

resource "aws_rds_cluster" "app9-rds-cluster" {
  cluster_identifier      = "app9-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    git_org   = "tommynsong"
    git_repo  = "terragoat"
    yor_trace = "7eedc30a-619f-4c3a-be9b-07992be483bc"
  }
}
