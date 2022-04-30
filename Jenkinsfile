pipeline {

    agent any

    stages {

        stage('Initialize') {
            steps {
                echo "PATH = ${PATH}"
            }

        }

        stage('Build') {
            steps {
                echo "Build Stage"
                sh 'mvn -D maven.test.failure.ignore=true install'
            }

        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }

        }

        stage('package') {
            steps {
                sh 'mvn clean package'
                sh 'docker build -t pos-admin-api .'
                sh 'docker run --network="host" -d -p8085:8085 pos-admin-api'
            }
        }

    }
}