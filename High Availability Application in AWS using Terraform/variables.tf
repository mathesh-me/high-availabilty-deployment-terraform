variable "instance_type" {
    description = "Value for Instance type"
    default = "t2.micro"
}

variable "image_id" {
    description = "Value for image-id"
}

variable "subnet1-az" {
    description = "Value for Subnet-1 availability zone"
}

variable "subnet2-az" {
    description = "Value for Subnet-2 availability zone"
}

variable "subnet1-cidr" {
    description = "Value for Subnet-1 CIDR block"
}

variable "subnet2-cidr" {
    description = "Value for Subnet-2 CIDR block"
}

variable "region" {
    description = "Specify your region"
}


variable "sg-name" {
    description = "Name for Security group"
}

variable "asg-name" {
    description = "Name for Auto Scaling group"
}

variable "lb-name" {
    description = "Name for Load balancer"
}

variable "tg-name" {
    description = "Name for Target group"
}

variable "vpc-cidr" {
    description = "Value for cidr"
}

variable "template-name" {
    description = "Name for Launch template"
}
