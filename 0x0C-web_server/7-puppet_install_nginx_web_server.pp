exec { 'install_nginx':
  provider => shell,
  command  => 'sudo apt-get -y update && sudo apt-get -y install nginx && echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html && sudo sed -i "/server_name _;/a \\\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default && sudo service nginx start',
  path     => '/usr/bin:/bin:/usr/sbin:/sbin',
}

