pipeline {
    agent any 
    stages{
        stage("checkout"){
            steps{
                 checkout scm
            }
        }
        stage('Test') {
            steps {
                script {
                    // Run tests here if you have any
                    echo 'Running tests...'
                }
            }
        }
       stage('Build') {
            steps {
                script {
                    // Install dependencies
                    bat 'npm install'
                    // Build the application
                    bat 'npm run build'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Deploy your Docker image
                    echo 'Deploying application...'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t my-node-app:1.0 .'
            }
        }

    }
}
