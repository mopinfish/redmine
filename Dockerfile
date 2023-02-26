ARG RUBY_VERSION=3.2.1
FROM redmine:5.0.4-alpine

COPY /redmine/files /usr/src/redmine/files
COPY /redmine/log /usr/src/redmine/log
COPY /redmine/plugins /usr/src/redmine/plugins
COPY /redmine/public/themes /usr/src/redmine/public/themes  
COPY /config/database.yml /usr/src/redmine/config/database.yml
#COPY /files /usr/src/redmine/files
#COPY /log /usr/src/redmine/log
#COPY /plugins /usr/src/redmine/plugins
#COPY /public/themes /usr/src/redmine/public/themes  
#COPY /config/database.yml /usr/src/redmine/config/database.yml

# Deployment options
ENV RAILS_LOG_TO_STDOUT="1" \
    RAILS_SERVE_STATIC_FILES="true"

EXPOSE 3000
