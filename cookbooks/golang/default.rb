directory "#{ENV['HOME']}/go" do
  owner node[:user]
  group node[:user]
end

execute 'install golang' do
  version = "1.20.6"
  command <<-EOC
  TMPDIR=$(mktemp -d)
  trap 'rm -rf "$TMPDIR"' EXIT
  cd "$TMPDIR" || exit
  wget https://go.dev/dl/go#{version}.linux-amd64.tar.gz
  tar -C /usr/local -xzf go#{version}.linux-amd64.tar.gz
  chown #{node[:user]}:#{node[:user]} -R #{ENV['HOME']}/go
  EOC
  not_if  "test -d /usr/local/go/bin"
end
