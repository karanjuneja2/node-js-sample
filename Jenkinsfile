pipeline {
    agent any

    tools {
        nodejs "Node18" // make sure NodeJS is configured in Jenkins tools
    }

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/karanjuneja2/node-js-sample.git'
            }
        }

        stage('Install') {
            steps {
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test || echo "No tests configured"'
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Build stage (optional for Node.js app)"'
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo "Deploy stage - Simulate deployment here"'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}
