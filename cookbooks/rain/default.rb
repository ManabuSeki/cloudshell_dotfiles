# https://github.com/aws-cloudformation/rain
github_binary 'rain' do
    os = if node[:os] == 'darwin'
        "macos"
    else
        node[:os]
    end
    repository 'aws-cloudformation/rain'
    version "v1.2.0"
    archive "rain-#{version}_#{os}-amd64.zip"
end
