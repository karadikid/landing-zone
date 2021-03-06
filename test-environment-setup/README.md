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

As a best practice, ensure that Multi-factor Authentication (MFA) is set up for the root account:

https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html

## Add IAM Administrator User

If your account doesn't already have a suitable administrator IAM user, add an IAM user to act an AWS administrator in the Master account.  Since the root account user cannot execute STS assume role functions, you'll need an IAM user to perform those tests.

Use CloudFormation from within the root account to execute the following template:

    ../../accounts/common/iam-admin-group-user/admin-group-user/admin-group-user.yml
    
Log in as the new Administrator IAM user.

As a best practice, also enable MFA for the Administrator account:

https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_enable_virtual.html

## Set up AWS Cloud9 Development Environment

Set up an AWS Cloud9 development environment in which you'll access a terminal session of an Amazon Linux instance from which you can run scripts to manage AWS Organizations and AWS accounts added to the organization.

* Log into the AWS console as the Administrator IAM user
* Create a new Cloud9 development environment
  * Select the instance type that best suits your needs
  * Consider overriding the default cost-savings setting
* Open the IDE

### Set Keybinding for Built-in ACE Editor

If you prefer `vim`, emacs, etc key bindings, select `AWS Cloud9 -> Preferences -> KEYBINDINGS` and set the keybinding of interest.

When you open files in the Cloud9 tree, the ACE editor will be used along with the selected keybinding.

### Disable Cloud9 Managed Temporary Credentials

By default, Cloud9 automatically manages a set of AWS credentials on your behalf by refreshing the content of 
`~/.aws/credentials`.  The AWS CLI and AWS SDKs automatically look for credentials in multiples locations
including this file.  Since we're going to attach an IAM role to the Cloud9 EC2 instance, we want the role
assigned to the EC2 instance to take precedence over the credentials managed by Cloud9. By disabling this
option, the `~/.aws/credentials` file will be deleted.

Select AWS Cloud9 -> Preferences -> AWS Settings -> Credentials -> disable "AWS managed temporary credentials"

## Check Out Source Code Examples

In your your terminal session within Cloud9, check out this source code:

    $ git clone https://github.com/ckamps/landing-zone.git

## Attach Suitable IAM Role to Cloud9 EC2 Instance

TO DO: Create CloudFormation template for the following set up and provide directions to run it from the AWS console using the Administrator account.

First, create a new IAM policy:

1. In the AWS Console, access the IAM service
2. Click Policies
3. Click Create policy
4. Click JSON
5. Copy the content of the following file over the content in the JSON editor:

```
$ cat landing-zone/test-environment-setup/ec2-policy.json
```

6. Click Review policy
7. Name the policy `lz-admin-ec2`
8. Click Create policy

Associate the new policy with a new IAM role:

1. Click Roles
2. Click Create role
3. Select EC2 as the trusted entity
4. Click Next: Permissions
5. Click Filter: Policy type -> Customer managed
6. Select `lz-admin-ec2`
7. Click Next: Review
8. Name the role `lz-admin-ec2`

Associate the new role with your Cloud9 EC2 instance:

1. Access the EC2 service
2. Select the `aws-cloud9-...` instance
3. Select Actions -> Instance Settings -> Attach/Replace IAM Role
4. Select the `lz-admin-ec2` role
5. Click Apply
 
## Install [boto3](https://boto3.readthedocs.io/en/latest/) Python Library for AWS

Since we'll be using Python scripts to automate some of the AWS environment set up, we'll want to install the latest version of the Python library for AWS.

    $ sudo pip install boto3

## Install [cfn-lint](https://github.com/awslabs/cfn-python-lint) Static Analysis Tool for CloudFormation

    $ sudo pip install cfn-lint
    
## Validate the Environment

We'll use the InSpec testing framework to help validate that the environment is set up properly. InSpec has a set of built-in
resources for AWS that ease the process of validating that AWS resources are configured properly.

Install InSpec:

    $ sudo gem install inspec

Run the following command to execute an InSpec-based test script:

    $ inspec exec validate.rb -t aws://us-east-1

All tests should pass!
