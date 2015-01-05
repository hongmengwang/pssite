if [ ! -d "/opt/tarball" ]; then
  mkdir -p /opt/tarball
fi

if [ ! -d "/opt/logs" ]; then
  mkdir -p /opt/logs
fi

if [ ! -d "/opt/webapps" ]; then
  mkdir -p /opt/webapps
fi

sudo chown -R `whoami`:`whoami` /opt

cd /opt/tarball

git clone https://github.com/wanghongmeng/pssite.git

wget http://nginx.org/download/nginx-1.7.9.tar.gz     
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.34.tar.gz 
wget http://caucho.com/download/resin-pro-4.0.41.tar.gz  
wget http://prdownloads.sourceforge.net/libpng/zlib-1.2.8.tar.gz?download
wget http://au1.php.net/get/php-5.6.4.tar.gz/from/this/mirror 
wget ftp://xmlsoft.org/libxml2/libxml2-git-snapshot.tar.gz 
wget http://www.memcached.org/files/memcached-1.4.21.tar.gz 
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz

###################install resin###############################
tar -zvxf resin-pro-4.0.41.tar.gz  
cd resin-pro-4.0.41/
./configure --prefix=/opt/app/resin && make && make install
cd /opt/app/resin/conf
mv resin.properties resin.properties.bak
mv resin.xml resin.xml.bak
cp /opt/tarball/pssite/src/main/bin/resin.properties ./
cp /opt/tarball/pssite/src/main/bin/resin.xml ./  

###################install nginx###############################
cd /opt/tarball
tar -zvxf pcre-8.34.tar.gz  
cd pcre-8.34/ 
sudo ./configure && sudo make && sudo make install

cd /opt/tarball
mv zlib-1.2.8.tar.gz\?download zlib-1.2.8.tar.gz
tar -zvxf zlib-1.2.8.tar.gz   
cd zlib-1.2.8/
sudo ./configure && sudo make && sudo make install

tar -zvxf nginx-1.7.9.tar.gz  
cd nginx-1.7.9/
./configure --prefix=/opt/app/nginx && make && make install
cd /opt/app/nginx/conf
mv nginx.conf nginx.conf.bak
cp /opt/tarball/pssite/src/main/bin/nginx.conf ./ 

###################install memcached###############################
cd /opt/tarball
tar -zvxf libevent-2.0.21-stable.tar.gz  
cd libevent-2.0.21-stable/ 
sudo ./configure && sudo make && sudo make install

cd /opt/tarball
tar -zvxf memcached-1.4.21.tar.gz   
cd memcached-1.4.21
./configure --prefix=/opt/app/memcached && make && make install

###################install php###############################
sudo apt-get -y install python
sudo apt-get -y install python-dev
sudo apt-get -y install python-lxml
sudo apt-get -y install libxml2-dev
sudo apt-get -y install libxslt-dev

cd /opt/tarball
tar -zvxf libxml2-git-snapshot.tar.gz  
cd libxml2-2.9.2/
sudo ./configure && sudo make && sudo make install
 
cd /opt/tarball
mv mirror php-5.6.4.tar.gz
tar -zvxf php-5.6.4.tar.gz
cd php-5.6.4.tar.gz/
./configure --prefix=/opt/app/php && make && make install




