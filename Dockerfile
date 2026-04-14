FROM wordpress:latest

# Perintah untuk mematikan modul mpm_prefork agar tidak bentrok dengan mpm_event
RUN sed -i 's/^LoadModule mpm_prefork_module/#LoadModule mpm_prefork_module/' /etc/apache2/mods-available/mpm_prefork.load || true
