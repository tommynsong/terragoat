resource "aws_rds_cluster" "app1-rds-cluster" {
  cluster_identifier                  = "app1-rds-cluster"
  allocated_storage                   = 10
  backup_retention_period             = 0
  deletion_protection                 = true
  iam_database_authentication_enabled = true
  tags = {
    yor_trace = "12384c73-9cfd-444e-9995-618edb846dee"
  }
}

resource "aws_rds_cluster" "app2-rds-cluster" {
  cluster_identifier      = "app2-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 1
  tags = {
    yor_trace = "69f1a6f0-d3b3-42fd-bf24-ba78733be089"
  }
}

resource "aws_rds_cluster" "app3-rds-cluster" {
  cluster_identifier      = "app3-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    yor_trace = "26dd99db-c80f-4459-964b-0352b142e911"
  }
}

resource "aws_rds_cluster" "app4-rds-cluster" {
  cluster_identifier      = "app4-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    yor_trace = "69c409d3-d6a2-4c40-8da9-be687fd37de2"
  }
}

resource "aws_rds_cluster" "app5-rds-cluster" {
  cluster_identifier      = "app5-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    yor_trace = "63d6fbd9-dc1e-4b8e-8189-3a43531db97b"
  }
}

resource "aws_rds_cluster" "app6-rds-cluster" {
  cluster_identifier      = "app6-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    yor_trace = "72bc7023-9bd2-40f0-a8fd-23f3fd035094"
  }
}

resource "aws_rds_cluster" "app7-rds-cluster" {
  cluster_identifier      = "app7-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    yor_trace = "2156327f-77f6-4251-bf4b-bfbfd3deb474"
  }
}

resource "aws_rds_cluster" "app8-rds-cluster" {
  cluster_identifier      = "app8-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    yor_trace = "2c50cc78-ea59-441f-8457-3e1df491374a"
  }
}

resource "aws_rds_cluster" "app9-rds-cluster" {
  cluster_identifier      = "app9-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    yor_trace = "36a465b0-7574-401f-9dce-ae14496cd37c"
  }
}
