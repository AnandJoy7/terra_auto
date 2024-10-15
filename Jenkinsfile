pipeline {
    agent any 

    environment {
        // Define your credentials in Jenkins and refer to them here
        AWS_CREDENTIALS = credentials('aws-credentials') // Jenkins ID for AWS credentials
        GITHUB_CREDENTIALS = credentials('github-credentials') // Jenkins ID for GitHub credentials
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Clone the GitHub repository
                git url: 'https://github.com/AnandJoy7/terra_auto.git', credentialsId: 'github-credentials'
            }
        }
        stage('AWS Credential Configuration') {
            steps {
                // Set AWS credentials
                script {
                    env.AWS_ACCESS_KEY_ID = AWS_CREDENTIALS.accessKey
                    env.AWS_SECRET_ACCESS_KEY = AWS_CREDENTIALS.secretKey
                    env.AWS_DEFAULT_REGION = 'us-east-1' // Change to your desired region
                }
            }
        }
        stage('Install Python Requirements') {
            steps {
                // Install required packages
                sh 'python3 -m pip install -r requirements.txt'
            }
        }
        stage('Run Terraform Script') {
            steps {
                // Execute the Python script
                sh 'python3 your_script.py'
            }
        }
    }

    post {
        always {
            // Archive Terraform plan output for later reference
            archiveArtifacts artifacts: 'terraform_plan_output.txt', allowEmptyArchive: true
        }
        success {
            echo 'Terraform script executed successfully.'
        }
        failure {
            echo 'Terraform script execution failed.'
        }
    }
}
