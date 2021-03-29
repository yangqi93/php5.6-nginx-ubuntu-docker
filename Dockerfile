FROM ubuntu:20.04
RUN apt update \
	&& apt -y install software-properties-common vim \
	&& add-apt-repository ppa:ondrej/php \
	&& apt update \
	&& apt -y install php5.6 php5.6-fpm php5.6-redis php5.6-mbstring php5.6-curl php5.6-mysql php5.6-xml \
	&& apt -y install nginx

COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY etc/nginx/sites-available/default /etc/nginx/sites-available/default
COPY etc/php/5.6/fpm/php.ini /etc/php/5.6/fpm/php.ini
RUN service nginx start && service php5.6-fpm start

