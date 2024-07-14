pipeline {
    agent any

    environment {
        DEV_ENV = 'dev'
        DEV_PORT = '28080'
        QA_ENV = 'qa'
        QA_PORT = '18080'
        PROD_ENV = 'prod'
        PROD_PORT = '80'
    }

    stages {
        stage('Build') {
            steps {
                script {
                    echo "Stage: Build"
                    docker.build('hello-world-app')
                }
            }
        }
        stage('Deploy to Dev') {
            when{
                branch 'develop'
            }
            steps {
                script {
                    echo "Stage: Deploy to Dev"
                    docker.image('hello-world-app').run("--name nginx-hw-${DEV_ENV} -e ENV=${DEV_ENV} -d -p ${DEV_PORT}:80")
                }
            }
        }
        stage('Deploy to QA') {
            when{
                branch 'test'
            }
            steps {
                script {
                    echo "Stage: Deploy to QA"
                    docker.image('hello-world-app').run("--name nginx-hw-${QA_ENV} -e ENV=${QA_ENV} -d -p ${QA_PORT}:80")
                }
            }
        }
        stage('Deploy to Prod') {
            when{
                branch 'main'
            }
            steps {
                script {
                    echo "Stage: Deploy to Prod"
                    docker.image('hello-world-app').run("--name nginx-hw-${PROD_ENV} -e ENV=${PROD_ENV} -d -p ${PROD_PORT}:80")
                }
            }
        }
    }
}