pipeline {
	agent any
	
	tools {
		maven 'localMaven'
	}
	
	stages {
		stage ('Initialize') {
			steps {
				echo 'Initializing the code file'
				//sh '''
				//echo "PATH = ${PATH}"
				//echo "M2_HOME = ${M2_HOME}"
				//'''
			}
		}
		
		stage ('Build') {
			steps {
				echo 'Ken Vilar Project for MRA'
			}
		}
		
		stage ('Build Servlet Project') {
			steps {
				sh 'mvn clean package'
			}
			
			post {
				success {
					echo 'Now Archiving ....'
					archiveArtifacts artifacts : '**/target/*.war'
				}
			}
		}
		
		stage ('Deploy Build in Staging Area') {
			steps {
				build job : 'Deploy-StagingArea-Pipeline'
			}
		}
		
		stage ('Deploy to Production') {
			steps {
				timeout (time: 5, unit: 'DAYS') {
					input message : 'Approve PRODUCTION Deployment?', 
					submitter : kenvilar@gmail.com
				}
				
				build job : 'Deploy-Production-Pipeline'
			}
			
			post {
				success {
					echo 'Deployment on PRODUCTION is Successful'
				}
				
				failure {
					echo 'Deployement Failure on PRODUCTION'
				}
			}
		}
	}
}
