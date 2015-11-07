# Shell Provisioning
# ------------------------------------- #
sudo apt-get update
# node dependencies
echo "- - - Node Dependencies - - -"
sudo apt-get install curl build-essential libssl-dev -y
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
# install and set node version
echo "- - - NVM - - -"
. ~/.nvm/nvm.sh
nvm install 4.1.1
nvm use 4.1.1
nvm alias default 4.1.1
# install node global packages
echo "- - - Node Packages - - -"
npm install forever@0.15.1 -g
npm install browserify@12.0.1 -g
npm install initd-forever@0.1.6 -g
npm install nodemon@1.8.1 -g
npm install bower@1.6.5 -g
# mongo db
echo "- - - Mongo DB - - -"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 -y
echo "deb http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update
sudo apt-get install mongodb-org -y
# nginx
echo "- - - NGINX - - -"
sudo apt-get install nginx -y
sudo sed -i 's|root \/usr\/share\/nginx\/www;|root \/home\/vagrant\/share\/docroot;|g' /etc/nginx/sites-available/default
sudo service nginx start
# move bash alias file to home dir
echo "- - - Bash Aliases - - -"
cp /vagrant/devops/bash_aliases ~/.bash_aliases
# create log file
forever list
touch ~/.forever/app.log