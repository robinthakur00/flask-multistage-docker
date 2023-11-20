pipeline {
    agent any
    stages {
        stage('Fetch from Git') {
            steps {
                git url: "https://github.com/robinthakur00/flask-multistage-docker.git", branch: "master"
            }
        }
        stage('Build the image') {
            steps {
                sh 'docker build -t flask-multistage-docker . '
            }
        }
        stage('Deploy the app') {
            steps {
                sh 'docker run -d -p 5000:5000 --name flask-multistage-docker-app flask-multistage-docker:latest'
            }
        }
    }
}