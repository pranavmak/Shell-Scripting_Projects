#!/bin/bash

######################################################
#
# Author: Pranav
# Date : 7th june
# Version : 1.0
# Desc: Reporting the AWS resource usage to dashboard
#
#####################################################

set -x

# AWS S3
# AWS EC2
# AWS IAM Users
# AWS Lambda

# Listing S3 buckets
echo "List of s3 buckets"
aws s3 ls > resourceTracker


# Listing EC2 instances
echo "List of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances.[].InstanceID'


# Listing lambda 
echo "List of lambda functions"
aws lambda list-functions >> resourceTracker:q!


# Listing Iam users
echo "List of IAM users"
aws iam list-users
