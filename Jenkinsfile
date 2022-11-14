pipeline {
    agent any 
        stages {
            
            stage('Build'){
            steps{
                script{
                    sh "ansible-playbook -vvvv Ansible/build.yml -i Ansible/inventory/host.yml "                    
                    }            
                }
            }
 stage('Docker'){
            steps{
                script{
		    sh "sudo chmod 777 /var/run/docker.sock"
                    sh "ansible-playbook -vvvv Ansible/docker.yml -i Ansible/inventory/host.yml"
                    }
                }
            }
stage('Docker login') {

            steps {
                   sh 'echo "login Docker ...."'
                   sh "docker login -u youssefskhiri -p 203JMT1337"
                               }  
			}
stage('docker registry')
 {
 steps{
 script{
 sh " ansible-playbook  -vvvv /var/lib/jenkins/workspace/livraison/ansible/docker-registry.yml -i ansible/hosts.yml "
 }
 }
 }
        }
}
