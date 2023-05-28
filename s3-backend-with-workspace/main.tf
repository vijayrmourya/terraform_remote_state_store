resource "aws_s3_bucket" "s3_Bucket_test" {
  bucket        = "testbucketvjmourya-s3backend-unique-1-${terraform.workspace}"
  force_destroy = true
}

# Create Security Group - Web Traffic
resource "aws_security_group" "Jenskins_server_vpc_web" {
  name        = "jenkins-server-vpc-web-${terraform.workspace}"
  description = "Security group for web traffic"
  ingress {
    description = "Allow all ip and ports inbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all ip and ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] /*just for practice purpose*/
  }
  tags = merge({
    "Name"      = "Jenkins_server"
    "workspace" = "${terraform.workspace}-${local.s3_bucket_region}"
    }
  )
}

