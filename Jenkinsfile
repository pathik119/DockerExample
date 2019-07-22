pipeline {
     agent any
     stages {
          stage("Compile") {
               steps {
                    sh "/usr/bin/mvn compile"
               }
          }
          stage("Unit test") {
               steps {
                    sh "/usr/bin/mvn test"
               }
          }
     
    
stage("Package") {
     steps {
          sh "/usr/bin/mvn package"
     }
}
stage("Docker build") {
     steps {
      
          sh "docker build -t pathik_tomcat ."
     }
}

stage("Deploy to staging") {
     steps {
 
          sh "docker run -d -it -v /var/lib/jenkins/workspace/tomcatdeploy/target/:/home/ec2-user/tomcat/apache-tomcat-8.5.34/webapps -p 8090:8080 --name Testtomcat pathik_tomcat"
     }
}

     }
  post {
     always {
          sh "docker stop Testtomcat"
     }
}
}
