ufw status
ufw allow ssh
ufw allow http
ufw allow https


sudo apt install nginx
sudo nano /etc/nginx/sites-availble/ddefault
sudo nginx -t
sudo systemctl restart nginx