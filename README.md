# ams
# ams 结算平台 项目 框架 
#1.后端才用SpringBoot 1.5.8,数据层用的mybatis3，定时任务qurtz，
#2 前段框架才用reactjs，可以和服务端合并一起部署，也可以拆分利用 nodejs 部署
#3 项目结构
   ams
     -- src
       --main
         --docker    #docker配置文件        
         --java      #源代码
         --resource  #项目静态资源，sql脚本
# 项目打包
#1.传统方式部署，非docker部署，进入项目根目录，执行mvn命令 mvn clean install，知道打包成功，然后去到项目target/
#目录下，找打ams-2.0.1.jar 项目jar包，任意java环境执行， java -jar ams-2.0.1.war &, 即可快速启动项目;
#2 Docker 方式部署
#1在 /src/main/docker/目录下添加 Dockerfile 文件，配置相关参数
FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD ams-2.0.1.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

在 pom文件
节点 <properties></properties>下加入


<docker.image.prefix>springboot</docker.image.prefix>

在<build><plugins></plugins></build> 下加入

            <plugin>
                <groupId>com.spotify</groupId>
                <artifactId>docker-maven-plugin</artifactId>
                <version>1.0.0</version>
                <configuration>
                    <imageName>${docker.image.prefix}/${project.artifactId}</imageName>
                    <dockerDirectory>src/main/docker</dockerDirectory>
                    <resources>
                        <resource>
                            <targetPath>/</targetPath>
                            <directory>${project.build.directory}</directory>
                            <include>${project.build.finalName}.jar</include>
                        </resource>
                    </resources>
                </configuration>
            </plugin>

#2. 打包项目
mvn clean install

复制 Dockerfile 文件和jar包上传到服务器

服务器目录 /root/docker_newoms
   -- Dockerfile
   -- ams-2.0.1.jar
   
在此目录下下执行
docker build -t ams .
等待构建docker镜像完毕
执行
docker run --name ams1.0 -d -p 8086:8082 --link mysql:mysqldb --link redis1:redisdb ams

访问项目 http://ip:8086

项目部署完毕
   

