pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }
        
        stage('Report') {
            steps {
                echo 'Test execution completed successfully!'
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
