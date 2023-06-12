version = "0.3.0"
github_binary 'ecsta' do
    repository "fujiwara/ecsta"
    version "v#{version}"
    archive "ecsta_#{version}_#{node[:os]}_amd64.tar.gz"
end
