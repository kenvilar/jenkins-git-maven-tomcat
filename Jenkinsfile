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
				/* For MacOS and Linux machine */
				sh 'mvn clean package'
				
				/* For windows machine */
				//bat 'mvn clean package'
			}
			
			steps {
				/* For MacOS and Linux machine */
				sh 'docker build . -t kenvilarwebapp:${env.BUILD_ID}'
				
				/* For windows machine */
				//bat 'docker build . -t kenvilarwebapp:${env.BUILD_ID}'
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
