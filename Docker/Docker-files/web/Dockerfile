FROM nginx
LABEL "Project"="MyResume"
LABEL "Author"="Sirine"


RUN rm -rf /etc/nginx/conf.d/default.conf
COPY myresumeapp.conf /etc/nginx/conf.d/myresumeapp.conf
COPY myresumeapp.conf /etc/nginx/conf.d/myresumeapp_ssl.conf

# Ajoutez un script d'entrée pour activer la configuration appropriée
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Commande par défaut
CMD ["/entrypoint.sh"]
