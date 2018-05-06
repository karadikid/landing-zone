# Create IAM Administrator Group and User

As a best practice, cloud administrators should avoid using the root user of each
AWS account. Instead, an IAM user and associated group should be created as
an alternative means to perform maintenance within an account.

This CloudFormation template creates an IAM administrator group and an administrator
user.

You might use this template in support of several scenarios:
* You are establishing a formal set of AWS accounts
* You have your own personal development/test AWS account and you simply want to use a non-root account to get things done

## Applying the Template

As root in your AWS account, use CloudFormation to execute the template and create a stack.

After the stack and the IAM group and user resources have been created, manually complete the 
process of setting up the account:

* Log in with the password you passed to CloudFormation and set a new password
* Under the new user in the IAM service, enable Multi-factor Authentication (MFA)

## Testing

If you'd like to test the CloudFormation template, see the `test/` directory.

Run the `test/test` script to execute the CloudFormation template and run an
automatice validation test.

Run the `test/cleanup` script to clean up the test group and user.