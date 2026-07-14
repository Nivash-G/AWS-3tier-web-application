# AWS Three-Tier Web Application

A production-style three-tier web application deployed on AWS.

## Architecture

Internet
→ Internet-facing Application Load Balancer
→ Apache Web Server (Presentation Tier)
→ Apache Reverse Proxy
→ Internal Application Load Balancer
→ Flask REST API (Application Tier)
→ Amazon RDS MySQL (Database Tier)

## AWS Services
- Amazon VPC
- Public & Private Subnets
- Internet Gateway
- NAT Gateway
- EC2
- Internet-facing & Internal ALB
- Auto Scaling Groups
- Launch Templates
- Amazon RDS MySQL
- Route 53
- ACM

## Technologies
Python, Flask, Apache, HTML, CSS, JavaScript, MySQL, Amazon Linux 2023

## Features
- Highly available three-tier architecture
- Auto Scaling
- REST API using Flask
- Apache reverse proxy
- Amazon RDS backend
- Route 53 DNS

> Replace the placeholder database credentials in backend/app.py before deploying.
