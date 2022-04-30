FROM adoptopenjdk/openjdk11:alpine-jre
CMD mnv clean package
COPY target/pos-admin-api-0.0.1-SNAPSHOT.jar pos-admin-api.jar
ENTRYPOINT ["java", "-jar", "pos-admin-api.jar"]
EXPOSE 8083