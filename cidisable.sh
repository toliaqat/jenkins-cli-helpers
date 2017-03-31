#!/bin/bash

JOB=tliaqat-xenon-maven-test-high-frequency

java -jar ~/jenkins-cli.jar -s https://xn-jenkins-master.adlbg.eng.vmware.com -i ~/.ssh/id_rsa disable-job $JOB
