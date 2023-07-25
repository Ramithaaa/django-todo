pipeline {
    agent any
    stages {
        stage ('code') {
            steps {
                git branch: "develop",url: "https://github.com/Ramithaaa/django-todo.git"
            }
        }
        stage ('build') {
            steps {
                sh "docker build -t huarami/app:v1 ."
            }
        }
        stage ('push to docker hub') {
            steps{
                withCredentials([usernamePassword(credentialsId:"dockerhub",usernameVariable:"user",passwordVariable:"pass")]) {
                    sh "docker login -u ${env.user} -p ${env.pass}"
                    sh "docker push ${env.user}/app:v1"
            }   }
        }
                
    }
}
