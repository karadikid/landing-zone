describe command('aws ec2 describe-vpcs \
                    --region us-east-1 \
                    --filters Name=tag:Name,Values=test-vpc') do
  its('stdout') { should include 'test-vpc'}
end