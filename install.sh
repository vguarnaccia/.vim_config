echo 'set runtimepath+=~/.vim_config

source ~/.vim_config/default.vim
source ~/.vim_config/plugins_config.vim

try
source ~/.vim_config/experimental.vim
catch
endtry' > ~/.vimrc

echo "Installation successful!"
