provider "aws" {
  region = "ap-south-1"

}

# resource "aws_vpc" "Tests" {
#   cidr_block = "10.0.0.0/16"

# }

# resource "aws_security_group" "testgrp" {

#   vpc_id = aws_vpc.Test.id

#   ingress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

# }

# resource "aws_subnet" "Test-sbnet" {

#   vpc_id            = aws_vpc.Test.id
#   cidr_block        = "10.0.0.0/24"
#   availability_zone = "ap-south-1a"

# }

# resource "aws_instance" "awsninjas" {
#   ami                    = "ami-013e83f579886baeb"
#   instance_type          = "t2.micro"
#   subnet_id              = aws_subnet.Test-sbnet.id
# }

resource "aws_iam_role" "jaidemo" {
  name                = "role"
  assume_role_policy  = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lambda.amazonaws.com"
        ]
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_lambda_function" "on_boarding_lambda" {
#   s3_bucket = var.config_bucket
#   s3_key    = var.on_boarding_lambda_config_path
  filename      = "./sum.zip"
  function_name = "lambdas"
  runtime       = "python3.8"
  handler       = "lambda_function.lambda_handler"
  # layers        = [aws_lambda_layer_version.lambda_layer.arn, aws_lambda_layer_version.lambda_layer_2.arn]
  role = aws_iam_role.jaidemo.arn
      

}