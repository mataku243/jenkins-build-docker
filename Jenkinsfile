node{
  def app

    stage('Recuperation') {
        checkout scm
    }

    stage('Creation de image') {
        app = docker.build("risty/nginx")
    }

    stage('Test de image') {
        docker.image('risty/nginx').withRun('-p 80:80') { c ->
        sh 'docker ps -a'
        sh 'curl localhost'
	     }
    }
}
