resource "aws_security_group" "ec2-sg" {
  ingress {
    description = "Loadb balancer sg"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
vpc_id = aws_vpc.vpc-1.id
}
