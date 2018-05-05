describe aws_iam_policy('lz-admin-ec2') do
  it { should exist }
  its('attached_roles') { should include 'lz-admin-ec2' }
end

describe aws_ec2_instance(name: 'aws-cloud9-*') do
  it { should exist }
end
