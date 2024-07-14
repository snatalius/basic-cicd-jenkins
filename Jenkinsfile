pipeline {
    agent any

    environment {
        DEV_ENV = 'dev'
        QA_ENV = 'qa'
        PROD_ENV = 'prod'
    }

    stages {
        stage('Build') {
            steps {
                script {
                    echo "Stage: Build"
                    /* docker.build('hello-world-app') */
                }
            }
        }
        stage('Deploy to Dev') {
            steps {
                script {
                    echo "Stage: Deploy to Dev"
                    /* docker.image('hello-world-app').run("-e ENV=${DEV_ENV}") */
                }
            }
        }
        stage('Deploy to QA') {
            steps {
                script {
                    echo "Stage: Deploy to QA"
                    /* docker.image('hello-world-app').run("-e ENV=${QA_ENV}") */
                }
            }
        }
        stage('Deploy to Prod') {
            steps {
                script {
                    echo "Stage: Deploy to Prod"
                    /* docker.image('hello-world-app').run("-e ENV=${PROD_ENV}") */
                }
            }
        }
    }
}