
How To Use
--------------

First setup some important prereqs

    sudo apt install -y openssh-server
    sudo apt install -y git

[Install Chrome](https://www.google.com/chrome/browser/desktop/index.html), because its nice to get it early.

Then pull the repo:

    mkdir config
    cd config
    git init
    git config core.worktree "../../"
    git remote add origin https://github.com/JCapriotti/settings-linux.git
    git pull origin master

And run the script:

    sudo sh ~/setup.sh

Set password in SMB credentials file:

    vi ~/.smbcredentials
