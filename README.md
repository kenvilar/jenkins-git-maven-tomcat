# jenkins-git-maven-tomcat

## Instructions
### Jenkins via its OS X installer
- To manually start the daemon: sudo launchctl load /Library/LaunchDaemons/org.jenkins-ci.plist
- To manually stop the daemon: sudo launchctl unload /Library/LaunchDaemons/org.jenkins-ci.plist

#### Uninstall Jenkins
- execute uninstall script from terminal
```
'/Library/Application Support/Jenkins/Uninstall.command'
```

#### Build Pipeline
- Create New Item
- Select Pipeline template
- Select Discard old build (optional)
  - Set Days to keep build to 2
  - Set Max # of builds to keep to 5
- In Pipeline tab
  - Select Pipeline script from SCM
    - Select Git in SCM
    - Repository URL should be https://github.com/kenvilar/jenkins-git-maven-tomcat.git
    - */master is set for Branch Specifier
    - Repository browser: Auto
    - Script Path: Jenkinsfile

#### Build Code Pipeline
- Create two jobs and named them "Deploy-StagingArea-Pipeline" and "Deploy-Production-Pipeline", respectively
- Create new tab and choose the list view
- In Job Filters section, select the two jobs you've created "Deploy-StagingArea-Pipeline" and "Deploy-Production-Pipeline"
- Click OK
  
#### Install jenkins on the ubuntu server
```
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
apt-get update
apt-get install jenkins

#install Java on Cloud(Linux/Unix/Debian) Machine
sudo apt-get update

#check Java Version
java -version

#if Output like this

#The program 'java' can be found in the following packages:
#  * default-jre

#then execute these commands
sudo apt-get install default-jre
sudo apt-get install default-jdk

#check if jenkins is running
ps aux | grep java

#start jenkins
systemctl start jenkins

#check Status of Jenkins
systemctl status jenkins

#stop Jenkins
systemctl stop jenkins

#restart Jenkins
systemctl restart jenkins
```
