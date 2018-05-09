describe command('aws ec2 describe-vpcs \
                    --region us-east-1 \
                    --filters Name=tag:Name,Values=Test-VPC-VPC') do
  its('stdout') { should include 'Test-VPC-VPC'}
end
