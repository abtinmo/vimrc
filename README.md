copy the vimrc to /home/user/.vimrc

run this command to install the vimplug


```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

open vim and run this command PlugInstall


DONE


font  :  https://sourcefoundry.org/hack/

build vim from source with this config :

./configure --enable-pythoninterp --with-features=huge --prefix=/usr/local/opt/vim --with-python-config-dir=/usr/local/opt/python/Frameworks/Python.framework/Versions/3.7/lib/python3.7/config-3.7m-darwin/ --enable-python3interp=/usr/local/bin/python3
