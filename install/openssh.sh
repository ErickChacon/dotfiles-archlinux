 # openssh setup
 
 sudo pacman -s openssh

 # only once
 # ssh-keygen -A

 sudo systemctl status sshd

 sudo systemctl start sshd

 sudo systemctl start sshd

ip route get 1.2.3.4 | awk '{print $7}'

ssh hostname@ip


 # sudo systemctl enable -now ssh
