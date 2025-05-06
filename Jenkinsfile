pipeline {
    agent any

    environment {
        FIREBASE_TOKEN = credentials('firebase-token')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ISSE546/asssignment5.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }

        stage('Deploy to Firebase') {
            steps {
                sh 'npm install -g firebase-tools'
                sh 'firebase deploy --token $FIREBASE_TOKEN --only hosting --non-interactive'
            }
        }
    }

    post {
        success {
            echo 'Deployment succeeded! Your app is live at: https://b6531539ass5.web.app'
        }
        failure {
            echo 'Deployment failed! Check the logs for errors.'
        }
    }
}