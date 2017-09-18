require './spec/spec_helper'

describe ec2('georgep-ec2') do
  it { should exist }
  its(:instance_type) { should eq 't2.medium' }
  it { should have_tag('Name').value('georgep-ec2') }
end
