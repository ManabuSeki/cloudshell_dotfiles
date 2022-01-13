execute 'remove default .zshrc' do
  user node[:user]
  command 'rm -f $HOME/.zshrc'
  only_if 'test -e $HOME/.zshrc'
end

dotfile '.zsh'
dotfile '.zshrc'

execute 'remove default .bashrc' do
  user node[:user]
  command 'rm -f $HOME/.bashrc'
  only_if 'test -e $HOME/.bashrc'
end

dotfile '.bashrc'
