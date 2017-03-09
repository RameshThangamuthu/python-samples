FROM tiangolo/uwsgi-nginx:python3.5
ENV http_proxy http://165.225.104.34:80
ENV https_proxy https://165.225.104.34:80
RUN pip install --proxy 165.225.104.34:80 flask

ADD app_get.py /

CMD ["python","./app_get.py"]

# Add app configuration to Nginx
#COPY nginx.conf /etc/nginx/conf.d/

# Copy sample app
#COPY ./app /app
