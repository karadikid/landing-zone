# Setting Up Test Environment for Landing Zone Automation

## Prepare Email Accounts

Ensure that you have at least the following email addresses that aren't already being used to support AWS accounts:

* Master
* Security
* Logging
* Shared Services
 
## AWS Master Account

Obtain a new or reuse a clean existing AWS account.

If your account doesn't already have a suitable administrator IAM user, add an IAM user to act an AWS administrator in the Master account.  Since the root account user cannot execute STS assume role functions, you'll need an IAM user to perform those tests.

Enable both console and access key access. 

https://docs.aws.amazon.com/IAM/latest/UserGuide/getting-started_create-admin-group.html

## Set up AWS Cloud9 Development Environment

* Log into the AWS console as the new Administrator IAM user
* Create a new Cloud9 development environment

## Test the Set Up

https://aws.amazon.com/blogs/security/how-to-use-aws-organizations-to-automate-end-to-end-account-creation/
