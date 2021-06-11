# From the beginning
## Reverse nginx
1. Run `vagrant up`, followed by `vagrant ssh`
2. all provision.sh commands
3. Make sure nginx is running using `sudo system status nginx`, if not use `sudo systemctl restart nginx`
4. Now access `cd /etc/nginx/sites-available` and use `ls` to see the files
5. Remove the files using `sudo rm 'name of the file'`
6. Add new file using `sudo nano default` and add the following code:
```
server {
	listen 80;

	server_name _;

	location / {
		proxy_pass http://192.168.10.100:3000;
		proxy_http_version 1.1;
		proxy_set_header Upgrade $http_upgrade;
		proxy_set_header Connection 'upgrade';
		proxy_set_header Host $host;
		proxy_cache_bypass $http_upgrade;
	}
}
```
7. Test it by using `sudo nginx -t` and see if successful
8. Restart nginx using `sudo systemctl restart nginx` and check if running by using `sudo systemctl status nginx`
9. Exit using `cd` and then use `cd app` to access app folder
10. Start node using `npm start`
11. Check `192.168.10.100` ip, if it loads with message reverse proxy has been successful

