include_recipe 'recipe_helper'

node.reverse_merge!(
  user: ENV['SUDO_USER'] || ENV['USER'],
  os: run_command('uname').stdout.strip.downcase,
)

# Can't take over $HOME with sudo
ENV['HOME'] = run_command("getent passwd #{node[:user]} | cut -d: -f6").stdout.strip

include_role node[:platform]
