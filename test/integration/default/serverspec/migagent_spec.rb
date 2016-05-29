require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/sbin/mig-agent') do
  it { should be_executable }
end

describe process("mig-agent") do
  its(:user) { should eq "root" }
end

