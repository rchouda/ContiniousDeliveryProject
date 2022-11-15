pipeline{
  // This shows a simple example of how to archive the build output artifacts.
agent any
    stages {
        stage('Pulling project to local Jenkins directory'){
           steps{
 script{
     echo "Pulled !"

 }
 }
  }

stage('Build Angular Project'){
 steps{
 script{
sh " ansible-playbook  /var/lib/jenkins/workspace/CDProject/Ansible/build.yml -i /var/lib/jenkins/workspace/CDProject/Ansible/inventory/host.yml "
 }
 }
 
 }

      stage('Building Docker Image'){
 steps{
 script{
sh " ansible-playbook  /var/lib/jenkins/workspace/CDProject/Ansible/docker.yml -i /var/lib/jenkins/workspace/CDProject/Ansible/inventory/host.yml "
 }
 }
 
 }
      stage('Docker Login'){
              steps{
                script{
		withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u rchouda911 -p $dockerhubpwd docker.io'
}

                }
            } 
        } 
       stage('Docker Registry(pushing image to DockerHub)')
 {
 steps{
 script{
 sh " ansible-playbook /var/lib/jenkins/workspace/CDProject/Ansible/docker-registry.yml -i /var/lib/jenkins/workspace/CDProject/Ansible/inventory/host.yml "
 }
 }
 }
      
}
  
}
