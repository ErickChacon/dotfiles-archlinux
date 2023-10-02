# Powerline font
cd && git clone --depth 1 https://github.com/powerline/fonts.git && \
  fonts/install.sh && \
  rm -rf fonts

# Devicon: DroidSansMono
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" \
    https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf

# # Devicon font (this is very slow)
# cd && git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git && \
#   cd nerd-fonts && ./install.sh DroidSansMono && cd .. && \
#   rm -rf nerd-fonts
