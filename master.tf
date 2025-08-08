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

resource "aws_subnet" "pubsubnet" {
  cidr_block = var.pubsubnet
  vpc_id = aws_vpc.myvpc.id
  tags = {
    ENvironment = "Prod"
    CreatedBy = "Mr-Tita"
    OwnedBy = "Mr-Tita"
  }
