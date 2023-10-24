resource "aws_lb" "alb" {
  name               = "alb-high-avail"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_security_group.id]
  subnets            = [aws_subnet.web-subnet1.id,aws_subnet.web-subnet2.id]
}
