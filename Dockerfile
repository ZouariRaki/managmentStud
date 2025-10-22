# Utiliser une image OpenJDK 17 légère
FROM eclipse-temurin:17-jre-focal

# Variable pour le jar
ARG JAR_FILE=target/*.jar

# Copier le jar dans le conteneur
COPY ${JAR_FILE} student-management.jar

# Exposer le port sur lequel Spring Boot tourne
EXPOSE 8089

# Commande pour lancer l'application
ENTRYPOINT ["java", "-jar", "/student-management.jar"]
