FROM jenkins:2.32.3

ENV JENKINS_JAVA_PARAMETERS="-server -XX:+AlwaysPreTouch -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/var/log/jenkins/heapdump.log -verbose:gc -Xloggc:/var/log/jenkins/gc-%t.log -XX:NumberOfGCLogFiles=2 -XX:+UseGCLogFileRotation -XX:GCLogFileSize=100m -XX:+PrintGC -XX:+PrintGCDateStamps -XX:+PrintGCDetails -XX:+PrintHeapAtGC -XX:+PrintGCCause -XX:+PrintTenuringDistribution -XX:+PrintReferenceGC -XX:+PrintAdaptiveSizePolicy -XX:+UseG1GC -XX:+UseStringDeduplication -XX:+ParallelRefProcEnabled -XX:+ExplicitGCInvokesConcurrent -XX:+UnlockDiagnosticVMOptions -XX:G1SummarizeRSetStatsPeriod=1 -XX:MaxMetaspaceExpansion=64M -Djenkins.model.Jenkins.logStartupPerformance=true"
ENV JAVA_OPTS="-Xms4g -Xmx8g $JENKINS_JAVA_PARAMETERS -Djava.awt.headless=true -Dhudson.slaves.WorkspaceList='_' -Dhudson.model.ParametersAction.keepUndefinedParameters=true -Dorg.jenkinsci.plugins.gitclient.Git.timeOut=30 -Dorg.eclipse.jetty.server.Request.maxFormContentSize=700000"

# Install jenkins plugins
COPY plugins.txt .
RUN install-plugins.sh $(echo $(cat plugins.txt))

# Install jenkins job builder
USER root
RUN wget -q https://bootstrap.pypa.io/get-pip.py -O /tmp/get-pip.py \
  && python /tmp/get-pip.py \
  && rm -f /tmp/get-pip.py \
  && pip install jenkins-job-builder==1.6.2
USER jenkins
