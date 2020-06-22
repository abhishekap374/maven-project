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
                sh "curl -v -u tomcat:tomcat1 -T /var/lib/jenkins/workspace/Sample-declarative-pipeline2/webapp/target/webapp.war 'http://192.168.33.103:8989//manager/text/deploy?path=Maven-Pipeline'"
            }
        }
    }
}
