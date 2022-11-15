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
stage('build'){
 steps{
 script{
sh " ansible-playbook  /home/rached/Desktop/myapp/Ansible/build.yml -i /home/rached/Desktop/myapp/Ansible/inventory/host.yml "
 }
 }
 
 }

      stage('Docker'){
 steps{
 script{
sh " ansible-playbook  /home/rached/Desktop/myapp/Ansible/docker.yml -i /home/rached/Desktop/myapp/Ansible/inventory/host.yml -K "
 }
 }
 
 }
   
}
  
}
