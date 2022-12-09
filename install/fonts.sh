# powerline font
cd && git clone --depth 1 https://github.com/powerline/fonts.git && \
  fonts/install.sh && \
  rm -rf fonts
# # xargs: warning: options --max-args and --replace/-I/-i are mutually exclusive, ignoring previous --max-args value
#
# # # Devicon font (this is very slow)
# # cd && git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git && \
# #   cd nerd-fonts && ./install.sh DroidSansMono && cd .. && \
# #   rm -rf nerd-fonts
#
# mkdir -p ~/.local/share/fonts
# cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
