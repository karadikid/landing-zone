describe aws_iam_policy('lz-admin-ec2') do
  it { should exist }
  its('attached_roles') { should include 'lz-admin-ec2' }
end
