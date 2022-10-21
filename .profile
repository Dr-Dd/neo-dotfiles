# System
export LANG="en_US.UTF-8"
export PATH="${PATH}:${HOME}/.local/bin:${HOME}/.cargo/bin:${HOME}/go/bin"
export CHROOT="$HOME/chroot"
export COUNTRY="IT"
export COMP_KNOWN_HOSTS_WITH_HOSTFILE=""

# Terminal
export HISTCONTROL="erasedups:ignorespace"
export PROMPT_DIRTRIM=2

# Editors
export VISUAL="/usr/bin/vim"
export EDITOR="/usr/bin/vim"

# Qt
export QT_STYLE_OVERRIDE="kvantum"
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export QT_SCALE_FACTOR=0.6

# GTK3
export GDK_SCALE=1
export GDK_DPI_SCALE=1

# Less
export LESSHISTFILE="/dev/null"

# Locate
# Custom envars for chron scripts
export MLOCATE_DATA_PRUNED_PATHS="media/data/.Trash-1000 /media/data/wine-pc /media/data/System\ Volume\ Information/ /media/data/SteamLibrary /media/data/Recovery /media/data/MSPCache /media/data/msdownld.tmp /media/data/found.000 /media/data/\$RECYCLE.BIN /media/data/Music"
export MLOCATE_HOME_PRUNED_PATHS="$HOME/chroot $HOME/gems $HOME/go $HOME/key-tools $HOME/proton $HOME/.cache $HOME/.bundle $HOME/.config $HOME/.dwarffortress $HOME/.eclipse $HOME/.emacs.d/anaconda-mode $HOME/.emacs.d/elpa $HOME/.emacs.d/emojis $HOME/.gem $HOME/.local/lib $HOME/.local/share $HOME/.m2 $HOME/.npm $HOME/.opam $HOME/music $HOME/Android"

# Ruby
export GEM_HOME="$HOME/gems"

# Browser 
export BROWSER="firefox"

# pkg-config
export PKG_CONFIG_PATH="/usr/lib/pkgconfig/"

# Video
#export LIBVA_DRIVER_NAME="radeonsi"
#export VDPAU_DRIVER="trace"
#export AMD_VULKAN_ICD=RADV
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json

# X11
export XMODIFIERS="@im=fcitx"
export PRIMARY_DISPLAY="eDP1"

# XDG Base directories
export XDG_CONFIG_HOME="$HOME/.config"

# Gtags
export GTAGSLABEL="ctags"
export GTAGSCONF="/usr/share/gtags/gtags.conf"

# Input method
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"

# Wine 
export WINEDEBUG="fps"

# Dictionary 
export DICPATH="/usr/share/hunspell"

# Steam environment variables
#export STEAM_FRAME_FORCE_CLOSE=1
#export STEAM_COMPAT_DATA_PATH="$HOME/proton"

# Sound card
export SOUND_CARD_PCI_ID="00:1f.3"

# DPI
#export DRD_DPI=96

# EMACS LSP
export LSP_USE_PLISTS=true

# Start ssh-agent session wide
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
	    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
	    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

