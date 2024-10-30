# FROM odoo:17
# MAINTAINER Odoo S.A. <sabreu@stemdo.io>

# SHELL ["/bin/bash", "-xo", "pipefail", "-c"]

# # Generate locale C.UTF-8 for postgres and general locale data
# ENV LANG en_US.UTF-8

# # ENV PASSWORD "pifgdjr44"

# COPY ./odoo.conf /etc/odoo/

# COPY ./entrypoint.sh /


# # ENTRYPOINT ["/entrypoint.sh"]
# # CMD ["odoo"]

# Partir de la imagen creada con el Dockerfile anterior (reemplaza con el nombre y la etiqueta correctos)
FROM odoo:17

USER root
RUN mkdir -p /stemdo/odoo \
    && chown -R odoo /stemdo/odoo

# Copiar el archivo de configuración personalizado
COPY odoo.conf /stemdo/odoo/odoo.conf


# Set the default config file
ENV ODOO_RC /stemdo/odoo/odoo.conf

# Copiar los módulos personalizados al directorio de addons de Odoo
# COPY modulos /mnt/extra-addons


# Definir el usuario predeterminado como `odoo` y mantener el ENTRYPOINT original
USER odoo
