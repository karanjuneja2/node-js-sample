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

        stage('Deploy') {
            steps {
                sh '''
                    npm install -g pm2
                    pm2 delete myapp || true  # stop previous instance if exists
                    pm2 start index.js --name myapp  # start new instance
                    pm2 save
                    }
                    }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}
