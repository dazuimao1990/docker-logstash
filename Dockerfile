FROM logstash:6.5.4

RUN yum makecache fast && yum install -y telnet && yum clean all

COPY logstash.conf /usr/share/logstash/pipeline/logstash.conf

COPY sqljdbc4-4.0.jar /usr/share/logstash/logstash-core/lib/jars/sqljdbc4-4.0.jar
