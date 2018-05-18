Roles:

1. Cloud Organization Administrators - AWS-123456789012-CloudOrganizationAdmins
    1. Responsible for entire environment.
    2. Provision accounts for lower level administration.
2. Cloud Account Administrators - AWS-123456789012-CloudAccountAdmins
    1. Responsible for administering all resources for lower level administrators except network.
3. Cloud Workload Administrators - AWS-123456789012-CloudWorkloadAdmins
    1. Responsible for administering workloads associated with their application.
4. Cloud Network Administrators - AWS-123456789012-CloudNetworkAdmins
    1. Responsible for provisioning network resources within AWS and between any other environment. (CareFirst on premises, the public Internet, Partner networks)


High-Level Permissions:

1. CloudOrganizationsAdmins
    1. CloudOrganizationsAdministrators
    2. IAM All
2. CloudAccountAdmins
    1. Administrators AWS role
    2. Network roles Deny
3. CloudWorkloadAdmins
    1. DeveloperPowerUser
    2. Network roles Deny
    3. More rights in Sandbox
4. CloudNetworkAdmins
    1. Network Administrators AWS role


