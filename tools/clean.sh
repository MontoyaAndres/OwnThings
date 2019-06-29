# Remove unnecessary packages.
sudo apt autoremove

# Clean Thumbnail cache
sudo rm -rf ~/.cache/thumbnails/*
du -sh ~/.cache/thumbnails

# Clean apt cache
## Show old output
sudo du -sh /var/cache/apt

sudo apt clean

## Show new output
sudo du -sh /var/cache/apt

# Installing other tools
sudo apt install synaptic

echo 'Execute synaptic and restart the computer!'
