pipeline {
    agent any

    tools {
        jdk 'jdk11'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/sanjana888/pipeline-git-repo'
                echo 'Repository cloned successfully'
            }
        }

        stage('Build') {
            steps {
                sh './build.sh'
            }
        }

        stage('Test') {
            steps {
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
