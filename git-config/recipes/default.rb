include_recipe "git"

bash "set git user name and email" do
  code <<-EOH
    su -l vagrant -c "git config --global user.name \\"#{node[:git_config][:user_name]}\\" && git config --global user.email #{node[:git_config][:user_email]}"
  EOH
end
