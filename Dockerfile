FROM postgres:latest as build

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=store
COPY stock.sql /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/stock.sql
EXPOSE 5432
CMD ["postgres"]