resource "aws_autoscaling_group" "asg" {
  name = var.asg-name
  desired_capacity   = 2
  max_size           = 4
  min_size           = 1
  target_group_arns = [aws_lb_target_group.target-group.arn]
  depends_on = [ aws_lb.test ]
  health_check_type = "EC2"
  vpc_zone_identifier = [aws_subnet.subnet1.id,aws_subnet.subnet2.id]


  launch_template {
    id      = aws_launch_template.template.id
  }
}

