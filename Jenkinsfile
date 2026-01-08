pipeline {
    agent any

    tools {
        jdk 'jdk11'
    }

    stages {

        stage('Build') {
            steps {
                echo 'Building application...'
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'java -cp src/main/java com.example.HelloDevOpsTest'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'app.jar', fingerprint: true
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed'
            cleanWs()
        }
    }
}
