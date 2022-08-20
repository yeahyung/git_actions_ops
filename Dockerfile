FROM nimmis/java-centos:openjdk-8-jdk

COPY /target/git_actions_ops*.jar /git_actions_ops.jar

ENV PROJECT_NAME git_actions_ops
ENV JAVA_OPTS "-Xss1m -Xms1g -Xmx1g -XX:MetaspaceSize=256m -XX:MaxMetaspaceSize=256m"
ENV JAVA_OPTS "$JAVA_OPTS -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:CMSInitiatingOccupancyFraction=70 -XX:+CMSParallelRemarkEnabled"

ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /git_actions_ops.jar"]