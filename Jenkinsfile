pipeline {
	agent any
	stages {
		stage ('Initialize') {
			steps {
				echo 'Initializing the code file'
				sh '''
				echo "PATH = ${PATH}"
				echo "M2_HOME = ${M2_HOME}"
				'''
			}
		}
		
		stage ('Build') {
			steps {
				echo 'Ken Vilar Project'
			}
		}
		
		stage ('Deploy') {
			steps {
				echo 'Deployed an Artifact'
			}
		}
	}
}
