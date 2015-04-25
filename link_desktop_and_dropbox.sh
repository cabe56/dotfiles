# If you already have done this in the past,
# your Dropbox/Desktop folder will have files.
# Create a temp backup by changin folder name
mv -r ~/Dropbox/Desktop ~/Dropbox/Desktop.backup
ln -s ~/Desktop ~/Dropbox/Desktop
# Move all files to new directory
mv ~/Dropbox/Desktop.backup/* ~/Dropbox/Desktop
# Get rid of backup
rm -rf ~/Dropbox/Desktop.backup
