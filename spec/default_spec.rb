require 'spec_helper'

describe 'meteor::default' do
  before do
    Fauxhai.mock(path: 'spec/fixtures/arch.json') do |node|
    end
  end

  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
    end.converge(described_recipe)
  end

  it 'should build and install packages' do
    expect(chef_run).to install_package 'nodejs'
    expect(chef_run).to install_package 'npm'
    expect(chef_run).to install_package 'python'
  end
end
