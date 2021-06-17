FROM arm64v8/openjdk:8-jre

LABEL maintainer="Naoki Takezoe <takezoe [at] gmail.com>"

ARG VERSION

ADD https://github.com/gitbucket/gitbucket/releases/download/${VERSION}/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

# Port for web page and Port for SSH access to git repository (Optional)
EXPOSE 8080 29418

CMD ["sh", "-c", "java -jar /opt/gitbucket.war"]
