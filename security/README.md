# Origin Source: 
https://{redacted}.amazon.com/packages/Landing-zone/logs/heads/feature/default_networking

# TODO - client specific
1.  Customizing the accounts for cross account access, such as adding parameters for additional accounts (Chris)

# TODO - AWS ProServ 
1.  Karadi's Deliverables
  1.  IAM policies  
    1.  role with permissions to:  
      1.  create S3 Buckets & Bucket Policies in the Logging/Auditing account  
      2.  create Cloudtrails  
      3.  run Cloudformation  
  2.  MFA delete policy on S3 Buckets in Logging/Auditing account     
2.  David's Deliverables  
  1.  not complete yet  

# Done:
1.  aws-landing-zone-s3-bucket.yml : create the bucket and bucket policy allowing cross account access 


# Post Landing Zone Phase 1: Enhancements
1.  Scale Splunk ingestion by Enabling S3 Bucket NotificationConfiguration  
  1.  https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfig.html  
  2.  http://docs.splunk.com/Documentation/AddOns/released/AWS/SQS-basedS3  
 3.  http://docs.splunk.com/Documentation/AddOns/released/AWS/ConfigureAWS#Configure_SQS  
2.  CostAllocation Tagging  
  1.  Cloudtrail and S3 Bucket  
3.  S3 Bucket Lifecycle Policy on Logging/Auditing account  
  1.  Bucket for Cloudtrail and Config  
