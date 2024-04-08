
# Install Python
apt-get update
apt-get install -y python3

# Install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py

pip install -r requirements.txt
python3 manage.py makemigrations
python3 manage.py migrate
