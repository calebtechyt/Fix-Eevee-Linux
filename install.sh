echo 'installing kernel..'
curl -s 'https://liquorix.net/install-liquorix.sh' | sudo bash
echo 'installing nix..'
curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install | sh -s -- --daemon
echo 'fixing pacman..'
sudo pacman -Sy
sudo pacman -S --noconfirm archlinux-keyring
sudo pacman-key --init
sudo pacman-key --populate archlinux
echo 'installing usefull apps via pacman..'
sudo pacman -S --noconfirm fastfetch
sudo pacman -S --noconfirm nano
sudo pacman -S --noconfirm vim
sudo pacman -S --noconfirm git
echo 'allowing flakes for nix..'
sudo mkdir /home/user/.config/nix/
sudo echo "experimental-features = nix-command flakes" >> /home/user/.config/nix/nix.conf
echo 'making user sudoer..'
echo "user ALL=(ALL:ALL) ALL" | sudo tee /etc/sudoers
echo "Done! if you want firefox, restart your terminal and run 'nix profile add nixpkgs#firefox' if you get errors, try running with sudo, or still getting errors, make sure your running this as "caleb111723" account or if still getting errors, report this to us!"
