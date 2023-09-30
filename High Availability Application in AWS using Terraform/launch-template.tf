resource "aws_launch_template" "template" {
  name          = var.template-name
  # ID of the Amazon Machine Image (AMI) to use for the instance
  image_id      = var.image_id
  instance_type = var.instance_type
  key_name = "test-app-key"

  # Block device mappings for the instance
  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      # Size of the EBS volume in GB
      volume_size = 8
    }
  }

  user_data = filebase64("user-data.sh")
  vpc_security_group_ids = [aws_security_group.sg.id]
  lifecycle {
    create_before_destroy = true
  }
  tag_specifications {
    
    resource_type = "instance"
    tags = {
      Name = "first"
    }
  }
}



