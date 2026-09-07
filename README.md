# Fix-Eevee-Linux
this script will make eevee linux (caleb tech's first distro made) usable

# Note
this script is still in works and is being tested, expect bugs to happen

# What script this will do
1. install a newer kernel
2. install nix
3. fix pacman and install useful packages
4. make 'user' be able to use sudo

end

# What to do before running
1. open system settings
2. go to users
3. click on caleb111723
4. change the password to what ever you want
5. open konsole
6. type 'su caleb111723'
7. type the password you set for the account
8. type 'sudo mv /home/user/path/to/install.sh /'
9. do 'cd ..' until your in /
10. type 'sudo chmod +x ./install.sh'
11. now launch with './install.sh' and let it install

# fix bugs
(after install) if your fixing bugs after you install this, note that user is the only sudoer now. so just run 'sudo mkdir /logo' then 'sudo cp /home/caleb111723/Documents/logo.png /logo' after that, do 'sudo nano /etc/os-release' and change the 'LOGO=' path to /logo/logo.png


(before install) if your fixing bugs first, root and caleb111723 still have sudoer but not user. do 'su caleb111723' and enter the password you set. or you can just login to caleb111723 from the lockscreen. after logging in, just do 'sudo mkdir /logo' then 'sudo cp /home/caleb111723/Documents/logo.png /logo' after that, do 'sudo nano /etc/os-release' and change the 'LOGO=' path to /logo/logo.png
