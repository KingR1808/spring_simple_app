FROM maven AS build
WORKDIR /app
COPY . .
RUN mvn package

FROM tomcat:8.5-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build /app/target/app.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]