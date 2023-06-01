FROM openjdk:17-bullseye

WORKDIR /app
RUN apt-get update && apt-get install -y findutils

COPY . ./

RUN ./gradlew build

EXPOSE 8080

CMD ["java", "-jar", "/app/build/libs/demo-0.0.1-SNAPSHOT.jar"]
