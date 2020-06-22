pipeline{
    agent any
    
    environment {
    PATH = "/opt/maven3/bin:$PATH"
    }
    stages{
        stage("Git Checkout"){
            steps{
               git credentialsId: 'forGitconfigure', url: 'https://github.com/abhishekap374/maven-project.git'
            }
        }
        stage("Maven Build"){
            steps{
                sh "mvn clean package"
            }
        }
        stage("Deploy-Dev"){
            steps{
                
            }
        }
    }
}
