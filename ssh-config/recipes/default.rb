ssh_directory = File.join("/home", node[:ssh_config][:user], ".ssh")
id_rsa_file = File.join(ssh_directory, "id_rsa")
id_rsa_pub_file = File.join(ssh_directory, "id_rsa.pub")

directory ssh_directory do
  owner node[:ssh_config][:user]
  group node[:ssh_config][:user]
  mode "0755"
  action :create
end

file id_rsa_file do
  owner node[:ssh_config][:user]
  group node[:ssh_config][:user]
  mode "0600"
  content node[:ssh_config][:id_rsa]
  action :create
end

file id_rsa_pub_file do
  owner node[:ssh_config][:user]
  group node[:ssh_config][:user]
  mode "0600"
  content node[:ssh_config][:id_rsa_pub]
  action :create
end
