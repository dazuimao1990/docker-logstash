FROM logstash:6.5.4

COPY logstash.conf /usr/share/logstash/pipeline/logstash.conf

COPY sqljdbc4-4.0.jar /usr/share/logstash/logstash-core/lib/jars/sqljdbc4-4.0.jar
