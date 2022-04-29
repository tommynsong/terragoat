resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data"
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-data"
    Environment          = local.resource_prefix.value
    git_commit           = "d68d2897add9bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "try-bridgecrew"
    git_repo             = "terragoat"
    yor_trace            = "fc8c2d7a-1997-4fc2-95c1-277cba5c2a38"
  }
  versioning {
    enabled = true
  }
}


resource "aws_s3_bucket_server_side_encryption_configuration" "data" {
  bucket = aws_s3_bucket.data.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
    }
  }
}



resource "aws_s3_bucket" "data_log_bucket" {
  bucket = "data-log-bucket"
}

resource "aws_s3_bucket_logging" "data" {
  bucket = aws_s3_bucket.data.id

  target_bucket = aws_s3_bucket.data_log_bucket.id
  target_prefix = "log/"
}



resource "aws_s3_bucket_server_side_encryption_configuration" "data" {
  bucket = aws_s3_bucket.data.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
    }
  }
}



resource "aws_s3_bucket_server_side_encryption_configuration" "data" {
  bucket = aws_s3_bucket.data.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}



resource "aws_s3_bucket_object" "data_object" {
  bucket = aws_s3_bucket.data.id
  key    = "customer-master.xlsx"
  source = "resources/customer-master.xlsx"
  tags = {
    Name                 = "${local.resource_prefix.value}-customer-master"
    Environment          = local.resource_prefix.value
    git_commit           = "d68d2897add9bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "try-bridgecrew"
    git_repo             = "terragoat"
    yor_trace            = "b77af90c-712d-4209-90ad-d46815ab3eb7"
  }
}

resource "aws_s3_bucket" "financials" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-financials"
  acl           = "private"
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-financials"
    Environment          = local.resource_prefix.value
    git_commit           = "d68d2897add9bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "try-bridgecrew"
    git_repo             = "terragoat"
    yor_trace            = "cecbef60-a2ea-4710-9d45-b865340e6095"
  }

}

resource "aws_s3_bucket" "operations" {
  # bucket is not encrypted
  # bucket does not have access logs
  bucket = "${local.resource_prefix.value}-operations"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-operations"
    Environment          = local.resource_prefix.value
    git_commit           = "d68d2897add9bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "try-bridgecrew"
    git_repo             = "terragoat"
    yor_trace            = "e62dfbc0-cc44-408b-a26a-13938d22e2f0"
  }

}

resource "aws_s3_bucket" "data_science" {
  # bucket is not encrypted
  bucket = "${local.resource_prefix.value}-data-science"
  acl    = "private"
  versioning {
    enabled = true
  }
  logging {
    target_bucket = aws_s3_bucket.logs.id
    target_prefix = "log/"
  }
  force_destroy = true
  tags = {
    git_commit           = "d68d2897add9bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "try-bridgecrew"
    git_repo             = "terragoat"
    yor_trace            = "25565a41-2c9e-45f2-a9e9-6c15b7afcfb6"
  }
}

resource "aws_s3_bucket" "logs" {
  bucket = "${local.resource_prefix.value}-logs"
  acl    = "log-delivery-write"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "aws:kms"
        kms_master_key_id = aws_kms_key.logs_key.arn
      }
    }
  }
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-logs"
    Environment          = local.resource_prefix.value
    git_commit           = "d68d2897add9bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "try-bridgecrew"
    git_repo             = "terragoat"
    yor_trace            = "ce72f84f-4cb6-4f67-b540-54d7e998df19"
  }
}

resource "aws_s3_bucket" "demo1" {
  #no bucket versioning
  bucket = "${local.resource_prefix.value}-demo1"
  tags = {
    Name        = "${local.resource_prefix.value}-demo1"
    Environment = local.resource_prefix.value
    yor_trace   = "e45ee79b-74da-4851-aa99-875edc9dfcaa"
  }
  logging {
    target_bucket = aws_s3_bucket.logs.id
    target_prefix = "demo1/"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "demo2" {
  #no bucket access logging
  bucket = "${local.resource_prefix.value}-demo2"
  tags = {
    Name        = "${local.resource_prefix.value}-demo2"
    Environment = local.resource_prefix.value
    yor_trace   = "114ec729-ffef-4f49-aa56-05fe5620352a"
  }
  versioning {
    enabled = true
  }
  logging {
    target_bucket = aws_s3_bucket.logs.id
    target_prefix = "demo2/"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket" "demo3" {
  #no SSE 
  bucket = "${local.resource_prefix.value}-demo3"
  tags = {
    Name        = "${local.resource_prefix.value}-demo3"
    Environment = local.resource_prefix.value
    yor_trace   = "f19953d8-09d8-4269-91b7-84c7d8c46dd3"
  }
  versioning {
    enabled = true
  }
  logging {
    target_bucket = aws_s3_bucket.logs.id
    target_prefix = "demo3/"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket" "tsong-test0" {

}
