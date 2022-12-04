#!/bin/bash
cp -r /var/lib/jenkins/* /root/jenkins_backup/
cd /root/jenkins_backup
rm -rf caches/
token="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"
username="NavyaKonappalli"
reponame="jenkins_backup"
timestamp=`date+%d: %m: %Y`
git status
git remote set-url origin https://${token}@github.com/${username}/${repoName}.git
git add .
git commit -m "jenkins_backup of today $timestamp"
git push origin master
