if [ "$1" == "--proxy" ]; then
    if [ "$2" != "" ]; then
        #END PROXY SETUP
        echo "$2" "proxy setup"
        export http_proxy="$2"
        export https_proxy="$2"
        export ftp_proxy="$2"
    else
        #ENV PROXY SETUP
        echo "No default proxy, AMRES assumed"
        export http_proxy=http://proxy.rcub.bg.ac.rs
        export https_proxy=http://proxy.rcub.bg.ac.rs
        export ftp_proxy=http://proxy.rcub.bg.ac.rs
    fi
else
    echo "Standard setup."
fi
echo "Getting Apps"
#APT-GET
sudo apt-get install git
sudo apt-get install vim
sudo apt-get install terminator
sudo apt-get install ssh

echo "dependencies..."
#GOOD STUFF
sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git

echo "VIM!"
#VIM SETUP
cd ~/
mkdir .vim
cd .vim
mkdir bundle
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/vitalk/vim-simple-todo.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/Chiel92/vim-autoformat.git
git clone https://github.com/Shougo/neocomplete.vim.git
git clone https://github.com/scrooloose/nerdcommenter.git
        
echo "Dependencies....."
#DOWNLOAD MORE DEPENDENCIES
sudo apt-get install build-essential terminator \
openssh-server sshfs python3 psensor htop unity-tweak-tool \
texstudio octave gimp inkscape python3-pip \
calibre geogebra cmake
        
echo "Installing OpenCV"
#INSTALL OPENCV
pip install --upgrade pip
pip3 install opencv-python
        
echo "Downloading Jetbrains Toolbox"
#JETBRAINS

mkdir Apps
wget -O Downloads/jetbrains-toolbox.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.5.2871.tar.gz
tar -zxvf Downloads/jetbrains-toolbox.tar.gz -C ~/Applications/
Applications/jetbrains-toolbox-1.5.2871/jetbrains-toolbox
        
echo "Setting up .vimrc"
#VIMRC

wget -O ~/ https://raw.githubusercontent.com/pavlesoskic/maintenance/master/.vimrc

echo "Finnished"
