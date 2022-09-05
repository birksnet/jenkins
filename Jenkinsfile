pipeline {
    agent {
        label '!debian'
    }

    stages {

        // Building and cloning 
        stage('Checkout Code') {
            steps {
                echo "Cloning repository Github ${env.BUILD_ID} on ${env.JENKINS_URL}"
                
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'yarn install '
            }
        }

        stage('Start Serve') {
            steps {
                echo "Testes "
                sh 'yarn serve'
            }
        }
        
        stage ('Static Analysis') {
                steps {
                    sh ' ./node_modules/eslint/bin/eslint.js -f checkstyle src > eslint.xml'
                }
                post {
                    always {
                        recordIssues enabledForFailure: true, aggregatingResults: true, tool: checkStyle(pattern: 'eslint.xml')
                    }
                }
        }
        

        
    }

}