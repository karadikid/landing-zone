# Create and Manage New AWS Member Accounts

The script `create-member-account` creates a member account of an organization,
optionally attaches the account to an organizational unit (OU), optionally 
associates a Service Control Policy (SCP) and optionally applies an initial
CloudFormation template in the new account.

    usage: create-member-account [-h] --account_name ACCOUNT_NAME --account_email
                                 ACCOUNT_EMAIL [--account_role ACCOUNT_ROLE]
                                 [--template_file TEMPLATE_FILE]
                                 [--stack_name STACK_NAME] --admin_username
                                 ADMIN_USERNAME --admin_password ADMIN_PASSWORD
                                 [--ou_name OU_NAME] [--scp_name SCP_NAME]
                                 [--region REGION]

## TO DO

* Make `admin_username` and `admin_password` optional since they are only used when
  `template_file` applies.
* Make idempotent
  * Ensure it can be used to apply ongoing changes.
  
## Create Member Account

If the account name already exists, the account will not be created.

## Associate with OU

`ou_name` is optional.

If the account is already attached to an OU, the account will be moved to the
specified OU.

## Attach Service Control Policy (SCP)

`scp_name` is optional.

If the specified SCP is already attached to the account, nothing will be done.

If one or more other SCPs are attached to the account, then the specified SCP
will be added.

TO DO: Accept an array of SCPs, remove all existing SCPs and apply the array
of SCPs. i.e. Add idempotency.

## Execute CloudFormation Template

