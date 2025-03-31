# My dotfiles

 This contains the dotfiles for my linux systems 

## Requirements

Make sure the following is installed on the system 

### Git 

```
sudo apt install git
```

### Stow 

```
sudo apt install stow
```

### NeoVim

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```

### Tmux

```
sudo apt install tmux
```

### OpenTofu

# Download the installer script:

```
curl --proto '=https' --tlsv1.2 -fsSL https://get.opentofu.org/install-opentofu.sh -o install-opentofu.sh
```

## Alternatively: "wget --secure-protocol=TLSv1_2 --https-only https://get.opentofu.org/install-opentofu.sh -O install-opentofu.sh"

# Give it execution permissions:
```
chmod +x install-opentofu.sh
```

# Run the installer:
```
./install-opentofu.sh --install-method deb
```

# Remove the installer:
```
rm -f install-opentofu.sh
```


## Install yq
```
sudo snap install yq
```
## or 

```
pip install yq
```

## Install Atuin
```
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
```


## Nerd Font
```
sudo apt install fontconfig -y \
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/0xProto.zip  \
&& cd ~/.local/share/fonts \
&& unzip 0xProto.zip \
&& rm 0xProto.zip \
&& fc-cache -fv
```
```
sudo apt install fontconfig -y \
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip  \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& fc-cache -fv
```



## Install 

After Install pull down the dotfiles to your $HOME dir using git 

```
 git clone https://github.com/js98947/.dotfiles.git
 cd dotfiles
```

Then used GNU stow to make the symlinks

```
 stow .
```
