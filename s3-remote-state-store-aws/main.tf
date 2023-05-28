resource "aws_s3_bucket" "s3_Bucket_test" {
  bucket        = "testbucketvjmourya-s3backend"
  force_destroy = true
}

# Create Security Group - Web Traffic
resource "aws_security_group" "Jenskins_server_vpc_web" {
  # vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id
  name        = "jenkins-server-vpc-web"
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
    "Name" = "Jenkins_server"
    }
  )
}
