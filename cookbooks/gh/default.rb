version = "2.4.0"
github_binary 'gh' do
    os = if node[:os] == 'darwin'
        "macOS"
    else
        node[:os]
    end
    repository 'cli/cli'
    version "v#{version}"
    archive "gh_#{version}_#{os}_amd64.tar.gz"
    binary_path "gh_#{version}_#{os}_amd64/bin/gh"
end
