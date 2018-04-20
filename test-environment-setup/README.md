# Setting Up Test Environment for Landing Zone Automation

This source code demonstrates ways in which you can automate setting up elements of a Landing Zone in AWS. A Landing Zone helps AWS customers implement best practices for AWS account structures, user configuration, provisioning, networking and operation automation. 

These examples depend on spinning up an AWS Cloud9 development environment to ease the process of working with the scripts.  Out-of-the-box Amazon Linux instances that form the basis of Cloud9 development environments provide pre-installed AWS CLI and scripting libraries that ease the process of getting started.

## Prepare Email Accounts

Ensure that you have at least the following email addresses that aren't already being used to support AWS accounts:

* Master
* Security
* Logging
* Shared Services
 
## AWS Master Account

Obtain a new or reuse a clean existing AWS account.

## Add IAM Administrator User

If your account doesn't already have a suitable administrator IAM user, add an IAM user to act an AWS administrator in the Master account.  Since the root account user cannot execute STS assume role functions, you'll need an IAM user to perform those tests.

Enable both console and access key access. 

https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started_create-admin-group.html

## Set up AWS Cloud9 Development Environment

Set up an AWS Cloud9 development environment in which you'll access a terminal session of an Amazon Linux instance from which you can run scripts to manage AWS Organizations and AWS accounts added to the organization.

* Log into the AWS console as the new Administrator IAM user
* Create a new Cloud9 development environment
* Open a terminal session 

## Check Out Source Code Examples

In your your terminal session within Cloud9, check out this source code:

$ git clone https://github.com/ckamps/landing-zone.git

## Install boto3 Python Library for AWS

Since we'll be using Python scripts to automate some of the AWS environment set up, we'll want to install the latest version of the Python library for AWS.

    $ sudo pip install boto3

## Attach Suitable IAM Role to Cloud9 EC2 Instance

...

## Test the Set Up

https://aws.amazon.com/blogs/security/how-to-use-aws-organizations-to-automate-end-to-end-account-creation/
