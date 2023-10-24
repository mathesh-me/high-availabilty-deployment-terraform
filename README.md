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
![Blank diagram (6)](https://github.com/mathesh-me/high-availabilty-deployment-terraform/assets/144098846/adad4562-7798-4d15-827e-56d5e5e0206b)

## Prerequistes
1. Basic knowledge of AWS services and concepts.<br>
2. Familiarity with Terraform and infrastructure as code principles.<br>
3. An AWS account with appropriate permissions.<br>
4. An IDE of your Choice , I would suggest VS Code Editor .<br>


## Terraform Configuration

The Terraform configuration files with(`*.tf`) in this repository define the AWS resources and settings required to create the high availability infrastructure.

## Steps 

- [Setting up the Environment](#step-1--setting-up-the-environment)
- [Installing necessary Plugins](#step-2--installing-necessary-plugins)
- [Creating a separate VPC Infrastructure](#step-3--creating-a-separate-vpc-infrastructure)
- [Creating Security group](#step-4--creating-security-group)
- [Creating Target group](#step-5--creating-target-group)
- [Creating Load balancer](#step-6--creating-load-balancer)
- [Defining Launch Template](#step-7--defining-launch-template)
- [Creating Auto Scaling Group](#step-8--creating-auto-scaling-group)
- [Providing values for Variables](#step-9--providing-values-for-variables)
- [Getting DNS as Output](#step-10--getting-dns-as-output)
- [Application](#step-11--application)


#### Step 1 : Setting up the Environment

Before you begin, create a new directory with an appropriate name and open this directory in your code editor.

#### Step 2 : Installing necessary Plugins

We have to ensure the necessary Terraform plugins installations. You have to create a new file with .tf extension and copy the code from [providers.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/providers.tf) in my repository and paste it in here. Then run the below command for plugins installation
```
terraform init
```

#### Step 3 : Creating a Separate VPC Infrastructure

We have to define and provision a Virtual Private Cloud (VPC) infrastructure. The Terraform configuration files for this step can be found as [vpc.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/vpc.tf) , [subnets.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/subnets.tf) , [internet-gw.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/internet-gw.tf) , [route-table.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/route-table.tf) in my repository , Copy and pste the files.

#### Step 4 : Creating Security Group

We have to Set up a security group for Auto Scaling group and Load Balancer to control inbound and outbound traffic for our instances. Configuration files for this step can be found in [alb-sg.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/alb-sg.tf)  and [asg-sg.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/asg-sg.tf)file in my repository.

#### Step 5 : Creating Target Group

We have to create an Elastic Load Balancer target group to route traffic to instances within our Auto Scaling Group. Configuration files  for this step can be found in [tg.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/tg.tf) file in my repository and also add the user data script file form [user-data.sh](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/user-data.sh) .

#### Step 6 : Creating Load Balancer

Next we have to set up an Elastic Load Balancer (ELB) to distribute incoming traffic across our instances. The ELB configuration can be found in the [loadbalancer.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High%20Availability%20Application%20in%20AWS%20using%20Terraform/loadbalancer.tf) file in my repository.

#### Step 7 : Defining Launch Template

We have to define a launch template specifying instance configuration details for your Auto Scaling Group. Configuration files for this step are located in the [alb.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/alb.tf) file in my repository.

#### Step 8 : Creating Auto Scaling Group

Finally we have to create an Auto Scaling Group (ASG) to automatically adjust the number of instances based on traffic or resource utilization. ASG configuration files for are located in the [asg.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/asg.tf) file in my repository.

#### Step 9 : Providing values for Variables

Till now, we have only assign variables without hardcoding values to them . Create two files with name variables.tf for variable declaration and terraform.tfvars for assign values to variables declared , Copy the [variables.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/variables.tf)  and [terraform.tfvars](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/terraform.tfvars) files from my repository. Don't forget to customize `terraform.tfvars` according to your requirements.

#### Step 10 : Getting DNS as Output

We don't have to necessarily need to go to console for fetch the DNS name We can get it in terminal using output concept . Configuration files for this step are located in the [output.tf](https://github.com/mathesh-me/high-availabilty-deployment-terraform/blob/main/High-availabilty-application-1-tier/output.tf) file in my repository.

![dns](https://github.com/mathesh-me/high-availabilty-deployment-terraform/assets/144098846/4c597c19-54ad-4de7-ac8a-55b7cd20e4b7)

#### Step 11 : Application

Once the above-mentioned steps are completed, apply the following commands to create the resources:
```
terraform plan
```
The above command will provide you with a preview of the resources that are going to be created.
```
terraform apply -auto-approve
```
The above command will create the resources defined in our configuration. Shortly after, the Auto Scaling Group (ASG) will launch instances and deploy our application on those instances , You can see final output like below picture :
![result](https://github.com/mathesh-me/high-availabilty-deployment-terraform/assets/144098846/b5add2bd-e0ef-4cd0-8ec8-420932af301d)

