FROM logstash:6.5.4
USER root
RUN yum makecache fast && yum install -y telnet && yum clean all

COPY logstash.conf /usr/share/logstash/pipeline/logstash.conf
COPY logstash.yml /usr/share/logstash/config/logstash.yml

COPY sqljdbc4-4.0.jar /usr/share/logstash/logstash-core/lib/jars/sqljdbc4-4.0.jar
