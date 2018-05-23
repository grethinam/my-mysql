# Derived from official mysql image (our base image)
FROM mysql
# Add a database
ENV MYSQL_DATABASE company
ENV MYSQL_ROOT_PASSWORD supersecret
# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/

EXPOSE 3306
