FROM openjdk:17

WORKDIR /app
COPY . /app

CMD java -Xms128m -Xmx128m -XX:+UseG1GC -jar GateGuard.jar
