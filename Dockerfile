# 基础镜像（带JDK17）
FROM eclipse-temurin:17-jre

# 工作目录
WORKDIR /app

# 把打包好的jar包复制到镜像里
COPY target/*.jar app.jar

# 启动命令
ENTRYPOINT ["java", "-jar", "app.jar"]