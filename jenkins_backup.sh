#!/bin/bash
cp -r /var/lib/jenkins/* /root/jenkins_backup/
cd /root/jenkins_backup
rm -rf caches/
token="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"
username="NavyaKonappalli"
reponame="jenkins_backup"
timestamp=`date`
git status
git remote set-url origin https://github.com/NavyaKonappalli/jenkins_backup.git
git add .
git commit -m "jenkins_backup of today $timestamp"
git push origin master
