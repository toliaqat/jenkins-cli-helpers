#!/bin/bash
BUILD_NO=$1
if [ "${BUILD_NO}TEST" == "TEST" ]; then
  echo "Must provide build number."
  exit 1
fi

JOB=tliaqat-xenon-maven-test-high-frequency

java -jar ~/jenkins-cli.jar -s https://xn-jenkins-master.adlbg.eng.vmware.com -i ~/.ssh/id_rsa enable-job $JOB
java -jar ~/jenkins-cli.jar -s https://xn-jenkins-master.adlbg.eng.vmware.com -i ~/.ssh/id_rsa delete-builds $JOB 1-100000
java -jar ~/jenkins-cli.jar -s https://xn-jenkins-master.adlbg.eng.vmware.com -i ~/.ssh/id_rsa build $JOB -p DCP_BUILD_SELECTOR="<SpecificBuildSelector><buildNumber>${BUILD_NO}</buildNumber></SpecificBuildSelector>"
