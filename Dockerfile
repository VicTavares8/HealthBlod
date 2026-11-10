# Usamos la imagen oficial de Tomcat 9
FROM tomcat:10.1

# Limpiamos las aplicaciones por defecto del servidor
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu API empaquetada a la carpeta de aplicaciones de Tomcat
COPY API_HealthBlood.war /usr/local/tomcat/webapps/API_HealthBlood.war

# Exponemos el puerto estándar
EXPOSE 8080
