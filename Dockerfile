
FROM postgres:latest


ENV POSTGRES_DB=Escola
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=senha123


COPY init.sql /docker-entrypoint-initdb.d/


EXPOSE 5432
