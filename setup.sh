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
