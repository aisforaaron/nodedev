# Node.js dev box

The goal is to have a simple VM with just NVM/Node basics setup to start a Node.js project.


## Additional Setup

* Edit your hosts file to add
  '''192.168.33.56  nodedev.local'''


Vagrant runs shell commands during provision to install:

* Node.js using NVM
* Nginx with webroot /home/vagrant/share/docroot
* Mongo DB (you must create your own dbs and collections)
* Forever to watch your app dir and write to specific log (needs to be manually started)
  * startfs path/to/hello.js  (custom ~/.bash_aliases file has a function to help you)
  * tail -f /home/vagrant/.forever/app.log  (to watch node log in terminal)
  * forever list (to see process running and log path)
  * forever stopall (to stop all forever processes)
  * ps -e|grep node  (to see any node processes running)
  * sudo killall node  (to stop all node processes)


## Extras that might be needed later

npm install -g
  express
  express-generator
