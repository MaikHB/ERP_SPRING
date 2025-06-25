# Imagen base ligera con Java 17 JRE
FROM eclipse-temurin:17-jre

# Directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el JAR generado por Maven
COPY target/projectERP-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto de la app (ajustalo si usás otro)
EXPOSE 9000

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
