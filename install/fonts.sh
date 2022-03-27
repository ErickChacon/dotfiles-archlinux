# powerline font
cd && git clone --depth 1 https://github.com/powerline/fonts.git && \
  fonts/install.sh && \
  rm -rf fonts
# xargs: warning: options --max-args and --replace/-I/-i are mutually exclusive, ignoring previous --max-args value

# # Devicon font (this is very slow)
# cd && git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git && \
#   cd nerd-fonts && ./install.sh DroidSansMono && cd .. && \
#   rm -rf nerd-fonts
