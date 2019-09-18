# Spring2019-Group26-Backend
This repository holds the REST API for Group 26's ASL Tutor as well as the admin web portal.

## Requirements
* Python 3.7+
* Vagrant
* Virtual Box
* Docker

## Install
Install virtual box and vagrant

Make a directory and clone the repo into it

From the terminal 'cd' into the project root (you should see a `Vagrantfile`) then run the following commands:

```bash
vagrant up
vagrant ssh
```

## To run the server

From the terminal 'cd' into the project Spring2019-Group26 and run the following commands:
```bash
cd ~/Spring2019-Group26-Backend
chmod +x deploy.sh
./deploy.sh
```
The deploy script will seem like it is hanging, there 40 second wait to make sure 
mongo is started

If you make changes and they do not automatically take affect run:
```bash
./deploy.sh
```

You can confirm everything is running with running with:
```bash
sudo systemctl status mongod
sudo systemctl status asltutor
```

If either is not running make sure mongo is up before starting or restarting asltutor
To start
```bash
sudo systemctl start mongod
sudo systemctl start asltutor
```

or restart
```bash
sudo systemctl restart mongod
sudo systemctl restart asltutor
```

If things are not working verify mongod and asltutor are running. You most likely will have to restart asltutor if you are having issues.

Requests will be directed to `http://localhost:1337/`

Server logs locations
request logs: `/tmp/reqlog`
error logs: `/tmp/errlog`

While developing, for changes in the backend code to be reflected in the app you will have to restart the app
```bash
sudo systemctl restart asltutor
``` 

[Not yet enabled] To launch the integration tests, use tox:

```bash
sudo pip install tox
tox
```

## Running with Docker

To run the server on a Docker container, please execute the following from the root directory:

```bash
# building the image
docker build -t app .

# starting up a container
docker run -p 5000:1337 app
```
