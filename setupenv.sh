# TODO: test

sudo systemctl start mongod
cd ~/Spring2019-Group26-Backend/src/asltutor
#remove venv if one already exist
rm -rf venv
python3 -m venv venv
source venv/bin/activate
cd ..
pip install -r requirements.txt
python setup.py develop
deactivate
#remove systemd config if one exist and replace it with a new one
sudo rm /etc/systemd/system/asltutor.service
sudo cp asltutor.service /etc/systemd/system/asltutor.service
sudo ufw allow 5000
