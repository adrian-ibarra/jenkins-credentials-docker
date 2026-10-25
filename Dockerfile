##Download a specific version of Ubuntu using the tag
FROM ubuntu 
LABEL Apasoft Training="apasoft.formacion@gmail.com" 
##Update the system
RUN apt-get update 
##Install nginx
RUN apt-get install -y nginx 
##Create an index.html file in nginx's default directory
RUN echo '<h1>My first Dockerfile</h1>' > /var/www/html/index.html 
##Start NGINX with ENTRYPOINT so it cannot be modified when creating the container
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"] 
##Expose port 80
EXPOSE 80 