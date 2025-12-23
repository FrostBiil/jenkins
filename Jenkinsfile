pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Shell Test') {
            steps {
                sh 'chmod +x test.sh && ./test.sh'
            }
        }

        stage('Python Test') {
            steps {
                sh 'python test.py'
            }
        }

        stage('C Test') {
            steps {
                sh 'gcc test.c -o test_c && ./test_c'
            }
        }

        stage('C++ Test') {
            steps {
                sh 'g++ test.cpp -o test_cpp && ./test_cpp'
            }
        }
    }

    post {
        success { echo 'All tests passed' }
        failure { echo 'One or more tests failed' }
    }
}
