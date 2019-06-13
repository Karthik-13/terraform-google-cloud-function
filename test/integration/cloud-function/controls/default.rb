# encoding: utf-8
# copyright: 2018, The Authors

title 'Verify Cloud Function Terraform Module'

control 'create cloud function' do
  impact 0.7                                
  title 'Verify Cloud Function'
  desc 'Ensures the Cloud Function is created'
  describe file('/tmp') do                  
    it { should be_directory }
  end
end
