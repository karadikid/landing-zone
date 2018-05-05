### 1. Master Account Bootstrap

Log in as root in master account

* Create break glass admin IAM group and user (CloudFormation template)

### 2. Organization, OUs and Member Account Creation

Log into Master account as IAM break glass admin user

* Create OUs (Python)
  * Create: sandbox, platform, hosting
  
* Create member account (Python)
  * Create platform account
  * Create logging account
  * Create security account
  * Create sandbox account
  * Create non-prod account
  * Create prod account
  
* Delete default VPC from each member account

* Create break glass admin IAM group and user in each member account (CloudFormation template)

### 3. Configure Platform Account

Log in as break glass admin in platform account

* Create S3 bucket in platform account for cloud formation templates (Python)

* Publish following cloud formation templates to platform account's S3 bucket (Python)

* Create example IAM groups and users in platform account to simulate users prior to federated access (CloudFormation template)
  * Cloud admins
  * Workload admins

* Create formal roles in platform account for IAM example groups so that they have sufficient access (CloudFormation template)

### 4. Provision VPC in Platform Account

Log in as cloud admin in platform account

* Create vpc in account (CloudFormation template)
  * Apply to platform account

### 5. Provision Workload to Platform Account

Log in as cloud admin in platform account

* Publish following cloud formation template to platform account's S3 bucket (Python)

* Deploy example workload to vpc (CloudFormation template)
  * Apply to platform account

### 6. Configure Logging Account

Log in as cloud admin in logging account

* Publish following cloud formation templates to platform account's S3 bucket (Python)

* Create example IAM groups and users in platform account to simulate users prior to federated access (CloudFormation template)
  * Cloud admins
  * Workload admins

* Create formal roles in platform account for IAM example groups so that they have sufficient access (CloudFormation template)

* Centralized config for CloudTrail (CloudFormation) 
* Centralized config for VPC FlowLogs (CloudFormation)
* Centralized config for CloudWatch logs (CloudFormation)

### 7. Configure Security Account

Log in as cloud admin in security account

* Publish following cloud formation templates to platform account's S3 bucket (Python)

* Create example IAM groups and users in security account to simulate users prior to federated access (CloudFormation template)
  * Cloud admins
  * Workload admins

* Create formal roles in security account for IAM example groups so that they have sufficient access (CloudFormation template)

### 8. Provision VPC in Security Account

Log in as cloud admin in security account

* Create vpc in account (CloudFormation template)
  * Apply to platform account
  
### 9. Configure Sandbox Account

Log in as cloud admin in sandbox account

* Publish following cloud formation templates to platform account's S3 bucket (Python)

* Create example IAM groups and users in sandbox account to simulate users prior to federated access (CloudFormation template)
  * Cloud admins
  * Workload admins

* Create formal roles in sandbox account for IAM example groups so that they have sufficient access (CloudFormation template)

### 10. Provision VPC in Sandbox Account

Log in as cloud admin in sandbox account

* Create vpc in account (CloudFormation template)
  * Apply to sandbox account

### 9. Implement IAM Cross-account Access Roles

Log in as cloud admin in platform account

* Enable cross-account login from platform account

### Subsequent Enhancements

All Acccounts

* Enable CloudTrail in all accounts
* Incorporate IAM user password policies (see current example)
* Add AWS Config monitoring

Master

* Billing monitoring
* CostExplorer

* Enhance cloud admin role in platform account to enable cross account access to 

* Establish cloud trail in logging account

* Enable cloud trail in account
