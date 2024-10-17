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
      stages {
        stage('Install Dependencies') {
            steps {
                script {
                    // Ensure Node.js is installed on the system and is in the PATH
                    bat 'npm install'
                }
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
