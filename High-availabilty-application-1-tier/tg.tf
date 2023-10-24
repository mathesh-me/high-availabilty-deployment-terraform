resource "aws_lb_target_group" "target-group" {
  name     = "tg-1"
  port     = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.vpc.id
  health_check {
    # interval = 70
    path = "/"
    # port = 80
    # healthy_threshold = 2
    # unhealthy_threshold = 2
    # timeout = 60
    # protocol = "HTTP"
    matcher = 200

  }
}

resource "aws_lb_listener" "alb_listener" {
  load_balancer_arn = aws_lb.alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group.arn
  }
}