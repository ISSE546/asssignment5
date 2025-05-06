pipeline {
    agent any

    tools {
        nodejs "NodeJS"  
    }

    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('firebase-service-account')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/ISSE546/asssignment5.git'
            }
        }

    
        stage('Deploy to Firebase') {
            steps {
                sh 'npm install -g firebase-tools'
                sh 'firebase deploy --only hosting'
            }
        }
    }

    post {
        success {
            echo 'Deployment succeeded!'
            echo 'Access your app at: https://b6531539ass5-13123.web.app'
        }
        failure {
            echo 'Deployment failed Check the logs.'
        }
    }
}