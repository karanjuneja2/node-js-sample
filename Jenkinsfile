pipeline {
    agent any
    stages {
        stage("run frontend") {
            steps {
                echo 'execute yarn'
                nodejs('node 24.2') {
                    sh 'yarn install'
            }
            }
        }
  
        stage("run backend") {
            steps {
                echo 'execute gradle'
                withGradle() {
                    sh './gradlew -v'
                }
            }
        }

    }
}
