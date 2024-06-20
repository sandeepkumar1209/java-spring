pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.9.7-eclipse-temurin-8-focal'
        }
      }
      steps {
        sh 'mvn clean install -Dmaven.test.skip=true'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t java-application:1.0.0 .'
      }
    }
  }
}
