require 'spec_helper'

describe package('nodejs') do
  it { should be_installed }
end

describe package('npm') do
  it { should be_installed }
end

describe package('python') do
  it { should be_installed }
end

describe file('/usr/local/bin/meteor') do
  it { should be_file }
  it { should be_executable }
end
