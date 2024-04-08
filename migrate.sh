# Install Python
curl https://www.python.org/ftp/python/3.9.2/Python-3.9.2.tgz -o Python-3.9.2.tgz
tar -xzvf Python-3.9.2.tgz
cd Python-3.9.2
./configure --enable-optimizations
make -j $(nproc)
make install

# Install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py

pip install -r requirements.txt
python3 manage.py makemigrations
python3 manage.py migrate
