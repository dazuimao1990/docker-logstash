FROM logstash:6.5.4
USER root
RUN yum makecache fast && yum install -y telnet && yum clean all
ENV CLASSPATH $CLASSPATH:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.191.b12-1.el7_6.x86_64/jre/lib

COPY logstash.conf /usr/share/logstash/pipeline/logstash.conf
COPY logstash.yml /usr/share/logstash/config/logstash.yml
COPY test.txt /usr/share/logstash/test.txt
COPY sqljdbc42.jar /usr/share/logstash/logstash-core/lib/jars/sqljdbc42.jar
COPY mysql-connector-java-5.1.36-bin.jar /usr/share/logstash/logstash-core/lib/jars/mysql-connector-java-5.1.36-bin.jar
