resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket
  tags = {
    ENvironment = "Prod"
    CreatedBy = "Mr-Tita"
    OwnedBy = "Mr-Tita"
  }
}

resource "aws_vpc" "myvpc" {
    cidr_block = var.myvpc
    tags = {
    ENvironment = "Prod"
    CreatedBy = "Mr-Tita"
    OwnedBy = "Mr-Tita"
    }
}