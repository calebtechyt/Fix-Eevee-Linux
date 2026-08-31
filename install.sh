sudo mkdir /logo
sudo mv /home/caleb111723/Documents/logo.png /logo
sudo LOGO="/logo/logo.png" sh -c 'grep -v "^LOGO=" /etc/os-release; echo "LOGO=$LOGO"' | sudo tee /etc/os-release > /dev/null
curl -s 'https://liquorix.net/install-liquorix.sh' | sudo bash
curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install | sh -s -- --daemon
sudo pacman -Sy archlinux-keyring
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -S --noconfirm fastfetch
sudo pacman -S --noconfirm nano
sudo pacman -S --noconfirm vim
sudo pacman -S --noconfirm git
sudo mkdir /home/user/.config/nix/
sudo echo "experimental-features = nix-command flakes" >> /home/user/.config/nix/nix.conf
echo "user ALL=(ALL:ALL) ALL" | sudo tee /etc/sudoers
echo "Done! if you want firefox, restart your terminal and run 'nix profile add nixpkgs#firefox' if you get errors, try running with sudo, or still getting errors, make sure your running this as "caleb111723" account or if still getting errors, wait for the bug to be fixed, we are still making working on this script"
