pipeline {
    agent {
        label '!debian'
    }

    stages {

        // Building and cloning 
        stage('Checkout Code') {
            steps {
                echo "Coning repositore Github ${env.BUILD_ID} on ${env.JENKINS_URL}"
                checkout([
                        $class: 'GitSCM', 
                        branches: [[name: '*/master']], 
                        doGenerateSubmoduleConfigurations: false, 
                        extensions: [[$class: 'CleanCheckout']], 
                        submoduleCfg: [], 
                        userRemoteConfigs: [[credentialsId: 'birksnet', url: 'https://github.com/Cupertino-Vestibulares/simulados.git']]
                    ])
            }
             
        }

        stage('Sync master') {
            steps {
                checkout scm
                
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