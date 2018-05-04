### Master Account Bootstrap

Log in as root in master account

* Create S3 bucket in master account for bootstrap cloud formation templates

* Create break glass admin IAM group (CloudFormation template)
  * Apply to master account

* Create break glass admin IAM user (CloudFormation template)
  * Apply to master account

### Organization, OUs and Member Account Creation

Log into Master account as IAM break glass admin user

* Create OU (Python script)
  * Create: sandbox, platform, hosting
  
* Create member account (Python script)
  * Create platform account
  * Create logging account
  * Create security account

* Create break glass IAM group and user in each account (CloudFormation template)

### Log in as break glass admin in platform account

* Create S3 bucket in platform account for cloud formation templates (Python script)

* Publish cloud formation template to platform account's S3 bucket (Python script)

* Create example IAM groups and users in platform account to simulate users prior to federated access (CloudFormation template)
  * Cloud admins
  * Workload admins

* Create formal roles in platform account for IAM example groups so that they have sufficient access (CloudFormation template)

### Log in as cloud admin in platform account

* Create vpc in account (CloudFormation template)
  * Apply to platform account

* Deploy workload to vpc (CloudFormation template)
  * Apply to platform account

### Subsequent Enhancements

* Enhance cloud admin role in platform account to enable cross account access to 

* Establish cloud trail in logging account

* Enable cloud trail in account
