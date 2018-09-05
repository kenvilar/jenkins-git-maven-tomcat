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
  
  
