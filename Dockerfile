FROM nginx
EXPOSE 443
EXPOSE 80
RUN mkdir -p /user/share/nginx/html/sweeper
COPY dist /usr/share/nginx/html/sweeper
