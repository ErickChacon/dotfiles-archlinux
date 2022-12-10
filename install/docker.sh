# install docker with cache space to /home/docker

sudo pacman -S docker docker-compose
sudo mkdir -p /home/docker
sudo echo "{\n\t\"data-root\": \"/home/docker\"\n}" > /etc/docker/daemon.json
sudo usermod -a -G docker $USER
systemctl enable --now docker.service
docker info

# sudo nvim /etc/docker/daemon.json
# # {
# # 	"data-root": "/home/docker"
# # }
#
#
# # restart
#
# # # https://www.ibm.com/docs/en/z-logdata-analytics/5.1.0?topic=compose-relocating-docker-root-directory
# # # sudo systemctl stop docker
# # sudo systemctl stop docker.service
# # sudo systemctl stop docker.socket
# # sudo mkdir -p /home/docker
# # sudo systemctl start docker
