%w(nodejs npm python).each do |pkg|
  package pkg do
    action :install
  end
end

# Install Meteor
install_script = 'meteor_install.sh'
meteor_install_file = File.join(
  Chef::Config[:file_cache_path], '/', install_script)

remote_file meteor_install_file do
  source node['meteor']['install_url']
  mode 0755
end

bash 'Install Meteor' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    /bin/sh #{install_script}
  EOH
  not_if { ::FileTest.exists?('/usr/bin/meteor') }
end
