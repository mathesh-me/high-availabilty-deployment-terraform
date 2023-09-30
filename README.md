# High Availability AWS Infrastructure Project using Terraform

## Project Description
This project demonstrates the implementation of a high availability infrastructure in AWS using Auto Scaling Groups (ASG) and Elastic Load Balancers (ELB) with Terraform. It also includes the setup of VPC, subnets, Internet Gateway (IG), and route tables.This project will showcase the creation of a robust and highly available infrastructure on Amazon Web Services (AWS) using Terraform. 


## Key features of this project include:
1. **Auto Scaling Groups (ASG):** I set up Auto Scaling Groups to dynamically adjust the number of instances based on traffic patterns, ensuring optimal resource utilization and reliability.
2. **Elastic Load Balancers (ELB):** Elastic Load Balancers are used to evenly distribute incoming traffic across multiple instances, eliminating single points of failure and enhancing availability.
3. **Fault Tolerance:** Our infrastructure is designed to be fault-tolerant, capable of withstanding component failures without causing downtime. This is achieved through redundancy and failover mechanisms.
4. **Virtual Private Cloud (VPC):** For a dedicated virtual network for my resources, isolated from other AWS accounts.
5. **Subnets:** For subdivisions of the VPC to host my instances in different availability zones.
6. **Internet Gateway (IG):** To allow communication between your VPC and the public internet.
7. **Route Tables:** Defining routing rules to direct traffic within the VPC and to the IG.
8. **CloudWatch:** For monitoring and scaling policies.

## Architecture Diagram

## Prerequistes
1. Basic knowledge of AWS services and concepts.<br>
2. Familiarity with Terraform and infrastructure as code principles.<br>
3. An AWS account with appropriate permissions.<br>
4. An IDE of your Choice , I would suggest VS Code Editor .<br>

## Architecture Diagram


## Terraform Configuration

The Terraform configuration files with(`*.tf`) in this repository define the AWS resources and settings required to create the high availability infrastructure.
