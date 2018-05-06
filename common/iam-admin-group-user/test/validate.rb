describe aws_iam_group('TestAdminGroup') do
  it { should exist }
  its('users') { should include 'TestAdminUser' }
end

describe aws_iam_user('TestAdminUser') do
  it { should exist }
end
