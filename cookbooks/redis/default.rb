execute 'install redis' do
  version = "6"
  command <<-EOC
  amazon-linux-extras install -y  redis#{version}
  EOC
  not_if  "rpm -qa | grep redis"
end
