FROM openjdk:17-alpine 
        
EXPOSE 8080 
 
ENV APP_HOME /usr/src/app

COPY target/*.jar $APP_HOME/boardgame.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "boardgame.jar"]
