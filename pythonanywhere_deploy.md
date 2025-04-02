# PythonAnywhere Deployment Guide for MUK Tracker

This guide provides step-by-step instructions to deploy the MUK Tracker backend on PythonAnywhere.

## Step 1: Create a PythonAnywhere Account
- Go to https://www.pythonanywhere.com
- Login with your credentials (Username: amnamara, Password: Israel@2024!)

## Step 2: Set Up a Web App
1. Click on the "Web" tab
2. Click "Add a new web app"
3. Choose "Manual configuration"
4. Select Python 3.11 (or the closest version to the one you're developing with)

## Step 3: Clone Your Repository
1. Click on the "Consoles" tab
2. Start a new Bash console
3. Run the following commands:
```bash
cd ~
git clone https://github.com/AmonKats-dev/muk-tracker.git
cd muk-tracker
```

## Step 4: Set Up a Virtual Environment
```bash
mkvirtualenv --python=/usr/bin/python3.11 muk-tracker-env
workon muk-tracker-env
pip install -r requirements.txt
# Install MySQL client
pip install mysqlclient
```

## Step 5: Create a MySQL Database
1. Go to the "Databases" tab
2. Create a new MySQL database named "muk_support_portal"
3. Note your database credentials

## Step 6: Configure the WSGI File
1. Go to the "Web" tab
2. Click on the WSGI configuration file link (e.g., /var/www/amnamara_pythonanywhere_com_wsgi.py)
3. Replace the content with the content from your pythonanywhere_wsgi.py file
4. Click "Save"

## Step 7: Set Up Static Files
1. Still on the "Web" tab
2. In the "Static files" section, add:
   - URL: /static/
   - Directory: /home/amnamara/muk-tracker/static
3. Add another for media:
   - URL: /media/
   - Directory: /home/amnamara/muk-tracker/media

## Step 8: Apply Database Migrations
1. Go back to your bash console
2. Run:
```bash
cd ~/muk-tracker/backend
python manage.py migrate --settings=muk_support_backend.settings_prod
```

## Step 9: Collect Static Files
```bash
python manage.py collectstatic --settings=muk_support_backend.settings_prod
```

## Step 10: Reload the Web App
1. Go back to the "Web" tab
2. Click the "Reload" button for your web app

## Step 11: Test Your API
- Your API should now be accessible at https://amnamara.pythonanywhere.com/api/

## Troubleshooting
- Check the error logs on the "Web" tab
- Make sure your database credentials are correct
- Ensure ALLOWED_HOSTS includes your PythonAnywhere domain
- Verify all required packages are installed in your virtualenv 