pipeline {
    agent any
    stages {
        stage('Clonar código') {
            steps {
                git 'https://github.com/JoseAntonioOrtega04/mi-proyecto-jenkins.git'
            }
        }
        stage('Construir imagen Docker') {
            steps {
                sh 'docker build -t mi-app:latest .'
            }
        }
        stage('Eliminar contenedor antiguo (si existe)') {
            steps {
                sh 'docker rm -f mi-contenedor || true'
            }
        }
        stage('Ejecutar contenedor') {
            steps {
                sh 'docker run -d -p 8081:80 --name mi-contenedor mi-app:latest'
            }
        }
    }
}

