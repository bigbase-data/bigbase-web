FROM nginx
COPY ./html /usr/share/nginx/html

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]