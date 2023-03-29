# install docker with cache space to /home/docker

sudo pacman -S docker docker-compose
sudo mkdir /home/docker /etc/docker
echo -e "{\n\t\"data-root\": \"/home/docker\"\n}" | sudo tee /etc/docker/daemon.json
sudo usermod -a -G docker $USER
sudo systemctl enable --now docker.service
# reboot
# docker info


# change current docker root directory
# https://www.ibm.com/docs/en/z-logdata-analytics/5.1.0?topic=compose-relocating-docker-root-directory
