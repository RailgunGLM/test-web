# Update pip
echo "Updating pip..."
python3.12 pip install -U pip

# Install dependencies

echo "Installing project dependencies..."
python3.12 -m pip install -r requirements.txt
python3.12 -m pip install -r pkgconfig
python3.12 -m pip install -r mysqlclient
python3.12 -m pip install -r mariadb
python3.12 -m pip install -r libmariadb
python3.12 -m pip install -r perconaserverclient

# Make migrations
echo "Making migrations..."
python3.12 manage.py makemigrations --noinput
python3.12 manage.py migrate --noinput
#Install whitenoise
echo "Installing white noise..."
python3.12 manage.py whitenoise
# Collect staticfiles
echo "Collect static..."
python3.12 manage.py collectstatic --noinput --clear
