pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/karanjuneja2/node-js-sample.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t nodejs-sample-app .'
            }
        }

        stage('List Docker Images') {
            steps {
                sh 'docker images'
            }
        }
    }
}
