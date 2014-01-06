require 'chefspec'
require 'chefspec/berkshelf'

describe "github-connect::default" do
  let(:log_level) { :info }
  let(:chef_run) { ChefSpec::Runner.new(cookbook_path: ['..', 'dependencies'], log_level: log_level).converge(described_recipe) }

  it 'installs git' do
    expect(chef_run).to install_package('git')
  end  
  it 'add known_hosts entry' do
    expect(chef_run).to create_ssh_known_hosts_entry('github.com')
  end  
  it 'check git connectivity' do
    expect(chef_run).to run_execute('github connectivity check')
  end  
end
