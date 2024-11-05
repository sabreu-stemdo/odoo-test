
FROM odoo:17

COPY ./odoo.conf /etc/odoo/

COPY modules /mnt/extra-addons

USER root

# Instalar dependencias de Python para cada módulo que tenga requirements.txt
RUN set -e; \
    for req in /mnt/extra-addons/*/requirements.txt; do \
        if [ -f "$req" ]; then \
            echo "Instalando dependencias de $req"; \
            pip install --no-cache-dir -r "$req"; \            
        fi \
    done


USER odoo