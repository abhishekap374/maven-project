pipeline{
    agent any
    
    environment {
    PATH = "/opt/maven3/bin:$PATH"
    }
    stages{
        stage("Git Checkout"){
            steps{
               git 'https://github.com/abhishekap374/maven-project.git'
            }
        }
        stage("Maven Build"){
            steps{
                sh "mvn clean package"
            }
        }
        stage("Maven Test"){
            steps{
                sh "mvn test"
            }
        }
        stage("Maven Deploy"){
            steps{
                sh "curl -v -u tomcat:tomcat1 -T /var/lib/jenkins/workspace/Sample_Declarative_PipeLine_Job/webapp/target/webapp.war 'http://3.135.224.218:8080//manager/text/deploy?path=/spring-pipeline'"
            }
        }
    }
}
