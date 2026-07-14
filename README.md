# ☁️ AWS Three-Tier Web Application

![AWS](https://img.shields.io/badge/AWS-Cloud-orange)
![Python](https://img.shields.io/badge/Python-3.9-blue)
![Flask](https://img.shields.io/badge/Flask-Web%20API-black)
![Apache](https://img.shields.io/badge/Apache-HTTP%20Server-red)
![MySQL](https://img.shields.io/badge/MySQL-RDS-blue)
![License](https://img.shields.io/badge/License-MIT-green)

A production-style **Three-Tier Web Application** deployed on **Amazon Web Services (AWS)** using a highly available, scalable, and secure architecture.

This project demonstrates how a real-world web application is deployed by separating the **Presentation Tier**, **Application Tier**, and **Database Tier** using AWS networking, load balancing, Auto Scaling Groups, and Amazon RDS.

---

# 📖 Table of Contents

- Project Overview
- Architecture Diagram
- Project Workflow
- AWS Services Used
- Technologies Used
- Features
- Repository Structure
- Screenshots
- Deployment Steps
- Challenges Faced
- Future Improvements
- Author

---

# 🚀 Project Overview

The project follows a production-style **Three-Tier Architecture**.

### Presentation Tier
- Apache Web Server
- Internet-facing Application Load Balancer
- Auto Scaling Group

### Application Tier
- Python Flask REST API
- Internal Application Load Balancer
- Auto Scaling Group

### Database Tier
- Amazon RDS MySQL

The architecture provides:

- High Availability
- Scalability
- Fault Tolerance
- Secure Network Isolation

---

# 🏗️ Architecture Diagram

<img width="1536" height="1024" alt="Architecture diagram" src="https://github.com/user-attachments/assets/d5d7cd58-9302-4e1a-ade7-72a31f433bb0" />


---

# 🔄 Project Workflow

```text
                 User
                  │
                  ▼
             Amazon Route 53
                  │
                  ▼
 Internet-facing Application Load Balancer
                  │
                  ▼
      Apache Web Server (EC2 ASG)
                  │
        Apache Reverse Proxy
                  │
                  ▼
 Internal Application Load Balancer
                  │
                  ▼
      Flask REST API (EC2 ASG)
                  │
                  ▼
          Amazon RDS MySQL
```

---

# ☁️ AWS Services Used

- Amazon VPC
- Public Subnets
- Private Application Subnets
- Private Database Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups
- Amazon EC2
- Application Load Balancer
- Auto Scaling Groups
- Launch Templates
- Amazon RDS MySQL
- Route 53
- AWS Certificate Manager (ACM)
- IAM

---

# 💻 Technologies Used

- Python
- Flask
- Apache HTTP Server
- HTML5
- CSS3
- JavaScript
- MySQL
- Amazon Linux 2023

---

# ⭐ Features

- Production-style 3-Tier AWS Architecture
- Public & Private Subnets
- Internet-facing Load Balancer
- Internal Load Balancer
- Apache Reverse Proxy
- Flask REST API
- Amazon RDS Database
- Auto Scaling Groups
- Launch Templates
- Route 53 DNS Integration
- Highly Available Architecture
- Secure Security Group Configuration

---

# 📂 Repository Structure

```text
AWS-3tier-web-application/
│
├── frontend/
│   ├── index.html
│   ├── styles.css
│   └── script.js
│
├── backend/
│   ├── app.py
│   ├── requirements.txt
│   └── schema.sql
│
├── architecture/
│   └── architecture-diagram.png
│
├── docs/
│   ├── deployment-guide.md
│   └── troubleshooting.md
│
├── screenshots/
│   ├── Website output.png
│   ├── VPC.png
│   ├── Subnets.png
│   ├── LOAD BALANCERS.png
│   ├── ASG.png
│   ├── EC2 Instances.png
│   ├── EC2 (1).png
│   ├── RDS Database.png
│   ├── Security groups.png
│   └── Route 53.png
│
└── README.md
```

---

# 📸 Project Screenshots

## 💻 Employee Management System

<img width="1920" height="1080" alt="Website output" src="https://github.com/user-attachments/assets/d968ac76-b252-4ddb-8c12-3628266d7894" />

---

## 🌐 Amazon VPC

<img width="1920" height="1080" alt="VPC" src="https://github.com/user-attachments/assets/6c741bc9-fc0b-47ea-849f-5caf79f8fce3" />


---

## 🌍 Public & Private Subnets

<img width="1920" height="1080" alt="Subnets" src="https://github.com/user-attachments/assets/c93d53f3-5ec2-4f2c-be3d-758de35a7fd9" />


---

## ⚖️ Load Balancers

<img width="1920" height="1080" alt="LOAD BALANCERS" src="https://github.com/user-attachments/assets/0663a63f-427b-4ff4-bc04-ea6492f01885" />


---

## 📈 Auto Scaling Groups

<img width="1920" height="1080" alt="ASG" src="https://github.com/user-attachments/assets/11082d33-6c98-49d3-a499-55d2a4ae69a0" />


---

## 🖥️ EC2 Instances

<img width="1920" height="1080" alt="EC2  (1)" src="https://github.com/user-attachments/assets/e6bf280c-f559-48e9-a226-cf1cf8cbc36c" />


---

## ⚙️ EC2 Configuration

<img width="1920" height="1080" alt="EC2 Instances" src="https://github.com/user-attachments/assets/3064f675-54dc-4e49-8032-78ddd58c5161" />


---

## 🗄️ Amazon RDS Database

<img width="1920" height="1080" alt="RDS Database" src="https://github.com/user-attachments/assets/24f2d450-0242-4151-b294-e606af0f7d91" />


---

## 🔒 Security Groups

<img width="1920" height="1080" alt="Security groups" src="https://github.com/user-attachments/assets/7feceb2e-bd22-4670-9fc7-47e57da78b05" />


---

## 🌍 Amazon Route 53

<img width="1920" height="1080" alt="Route 53" src="https://github.com/user-attachments/assets/17141405-9364-404b-9054-bf098b05145a" />


---

# 🚀 Deployment Steps

1. Create a custom Amazon VPC.
2. Create Public and Private Subnets.
3. Configure Route Tables.
4. Create and Attach an Internet Gateway.
5. Configure NAT Gateway.
6. Launch Apache Web Server EC2 Instance.
7. Launch Flask Application EC2 Instance.
8. Configure Amazon RDS MySQL.
9. Configure Apache Reverse Proxy.
10. Create Internal Application Load Balancer.
11. Create Internet-facing Application Load Balancer.
12. Create Launch Templates.
13. Configure Auto Scaling Groups.
14. Configure Route 53 Hosted Zone.
15. Verify Target Groups and Health Checks.
16. Test the Employee Management System.

---

# 🔍 Challenges Faced

## Internal ALB Health Check Failure

**Cause**

- Flask application was not running.

**Solution**

- Verified Security Groups.
- Started the Flask application.
- Confirmed Target Group health checks.

---

## 502 Bad Gateway

**Cause**

- Apache Reverse Proxy could not communicate with the backend application.

**Solution**

- Configured Apache Reverse Proxy correctly.
- Verified Internal ALB.
- Restarted the Flask application.

---

## Auto Scaling Instance Failure

**Cause**

- Newly launched EC2 instances did not contain the required Python dependencies.

**Solution**

- Installed Flask and MySQL Connector.
- Verified application startup.
- Planned to create a new AMI with all dependencies installed.

---

## Route 53 DNS Issue

**Cause**

- Incorrect DNS configuration.

**Solution**

- Updated the Alias A Record to point to the Internet-facing Application Load Balancer.

---

## Secure Access to Private Instances

**Solution**

- Used the Web Server as a jump host to securely access EC2 instances in the private subnet for troubleshooting and deployment.

---

# 🚀 Future Improvements

- HTTPS using ACM
- Jenkins CI/CD Pipeline
- Docker Containerization
- Kubernetes (Amazon EKS)
- Terraform Infrastructure as Code
- CloudWatch Monitoring & Alarms
- AWS WAF
- AWS CodePipeline

---

# 👨‍💻 Author

## Nivash G

Cloud & DevOps Enthusiast

### Skills

- AWS Cloud
- Linux
- Python
- DevOps
- Networking
- Apache
- Flask
- MySQL

---

## ⭐ If you found this project useful, please consider giving it a Star!
