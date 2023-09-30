resource "aws_lb_target_group" "target-group" {
  name     = var.tg-name
  port     = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.myvpc.id
  health_check {
    interval = 70
    path = "/index.html"
    port = 80
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 60
    protocol = "HTTP"
    matcher = "200,202"

  }
}

