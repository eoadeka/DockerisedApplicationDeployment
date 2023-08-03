pipeline{

  agent any
  
  stages{
    // Build and Deploy stages
    
    stage("build"){
      // Stage: Build Docker image
      steps{
        script{
          sh 'docker build -t ellaadeka/flask-app-deploy .'
        }
      }
    }

    stage("deploy"){
      // Stage: Deploy application to a local Docker environment
      steps{
        script{
          withCredentials([string(credentialsId: 'dockerhubsecrets', variable: 'dockerhubpwd')]) {
            // log in to Docker hub
            sh "docker login -u ellaadeka -p ${dockerhubpwd}"
          }
          // Push docker image to Dockerhub
          // must be tagged with docker username
          sh 'docker push ellaadeka/flask-app-deploy'
        }
      }
    }
  }
}
