FROM openjdk:17-jdk

# Docker 컨테이너 작업 디렉토리명 (없으면 자동 생성)
WORKDIR /team5-kkangtong

# 빌드된 JAR 파일을 컨테이너로 복사
ARG JAR_FILE=build/libs/*-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

#LABEL authors="t2023-m0073"

# 애플리케이션을 실행하는 명령어 지정
ENTRYPOINT ["java", "-jar", "/team5-kkangtong/app.jar"]