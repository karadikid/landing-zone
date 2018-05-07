describe aws_iam_policy('lz-admin-ec2') do
  it { should exist }
  its('attached_roles') { should include 'lz-admin-ec2' }
end

describe aws_ec2_instance(name: 'aws-cloud9-*') do
  it { should exist }
end

# TO DO: The following test is not executed:
#  "Resource Command is not supported on platform aws/aws-sdk-v2.11.43"
#  Need to determine how OS resources such as the command resource
#  can be executed in addition to the aws resources.
#
describe command('aws ec2 describe-instances \
                    --region us-east-1 \
                    --filters Name=tag:Name,Values=aws-cloud9-* 
                    Name=iam-instance-profile.arn,Values=arn:aws:iam::*:instance-profile/lz-admin-ec2') do
  its('stdout') { should include 'instance-profile/lz-admin-ec2'}
end
