CREATE USER odoo_user WITH PASSWORD 'pifgdjr44';
ALTER USER odoo_user WITH CREATEDB;

CREATE DATABASE test_odoo;
REVOKE ALL PRIVILEGES ON DATABASE test_odoo FROM PUBLIC;
GRANT ALL PRIVILEGES ON DATABASE test_odoo TO odoo_user;

docker buildx build --platform linux/arm64 -t sebasnaa/custom_odo:17-0 --push .
