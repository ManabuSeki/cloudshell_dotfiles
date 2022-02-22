directory "#{ENV['HOME']}/go" do
  owner node[:user]
end

execute 'install golang' do
  version = "1.17.7"
  command <<-EOC
  TMPDIR=$(mktemp -d)
  trap 'rm -rf "$TMPDIR"' EXIT
  cd "$TMPDIR" || exit
  wget https://go.dev/dl/go#{version}.linux-amd64.tar.gz
  tar -C #{ENV['HOME']} -xzf go#{version}.linux-amd64.tar.gz
  EOC
  not_if  "test -d #{ENV['HOME']}/go/bin"
end
