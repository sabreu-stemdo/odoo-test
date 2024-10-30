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


# Eliminar el directorio /var/lib/odoo si existe y crear un enlace simbólico a /stemdo/odoo
RUN rm -rf /var/lib/odoo && ln -s /stemdo/odoo /var/lib/odoo

# Definir el usuario predeterminado como `odoo` y mantener el ENTRYPOINT original
USER odoo


