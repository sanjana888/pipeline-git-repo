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
 echo 'Building application...'
        sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }

        stage('Test') {
    steps {
        echo 'Running tests...'
        sh 'java -cp bin com.example.HelloDevOpsTest'
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
