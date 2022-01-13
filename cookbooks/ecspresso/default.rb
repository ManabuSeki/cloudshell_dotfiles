version = "1.7.5"
github_binary 'ecspresso' do
    repository 'kayac/ecspresso'
    version "v#{version}"
    archive "ecspresso_#{version}_#{node[:os]}_amd64.tar.gz"
end
