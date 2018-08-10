if grep -Fxq "export VISUAL=vim" ~/.bashrc
then
    echo "export VISUAL already exists"
else
    echo "export VISUAL=vim" >> ~/.bashrc
fi

if grep -Fxq "export EDITOR=\"\$VISUAL\"" ~/.bashrc
then
    echo "export EDITOR already exists"
else
    echo "export EDITOR=\"\$VISUAL\"" >> ~/.bashrc
fi

cp .vimrc ~

# run vim and download plugins
vim -c 'PluginInstall' -c 'qa!'

# now install YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
python -m install 
