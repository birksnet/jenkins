pipeline {
    agent {
        label '!debian'
    }

    stages {

        // Building and cloning 
        stage('Checkout Code') {
            steps {
                echo "Coning repositore Github ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
             
        }

        stage('Sync master') {
            steps {
                git pull
            }
        }

        stage('Test') {
            steps {
                /* `make check` returns non-zero on test failures,
                * using `true` to allow the Pipeline to continue nonetheless
                */
                echo " Testes "
                //sh 'make check || true' 
                //junit '**/target/*.xml' 
            }
        }
        
        stage('Building docker image'){
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                //sh 'docker build cupertino'
            }
        }

        
    }

}