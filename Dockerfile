FROM amazoncorretto:19
WORKDIR /var/server
CMD ["java", "-Xmx6G", "-jar", "server-launcher.jar", "nogui"]