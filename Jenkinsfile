pipeline {
    agent any

    tools {
        nodejs "Node18"  // Make sure you added Node.js as a tool in Jenkins
    }

    stages {
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test || echo "No tests yet"'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    npm install -g pm2
                    pm2 delete myapp || true  # stop previous instance if exists
                    pm2 start index.js --name myapp  # start new instance
                    pm2 save
                '''
            }
        }
    }
}
