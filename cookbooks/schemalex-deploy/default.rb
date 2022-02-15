version = "0.0.4"
github_binary 'schemalex-deploy' do
    repository 'shogo82148/schemalex-deploy'
    version "v#{version}"
    archive "schemalex-deploy_#{version}_#{node[:os]}_amd64.tar.gz"
end
