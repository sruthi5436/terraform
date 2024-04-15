pipeline {
    agent any
     environment {
        AZURE_CLIENT_ID = credentials('azure-client-id')
        AZURE_TENANT_ID = credentials('azure-tenant-id')
        AZURE_OBJECT_ID = credentials('azure-object-id')
        AZURE_SECRET_ID = credentials('azure-secret-id')
        GITHUB_CREDENTIALS_ID = credentials('github-credentials-id')
        GITHUB_TOKEN_CREDS = credentials('github-token-credential-id')
      //  GITHUB_TOKEN_CREDS1 = credentials('github_ptoken')
        SUBSCRIPTION_ID = credentials('subscription_id')  
    }

    stages {
    
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sruthi5436/terraform.git'
            }
        }
         stage('Azure Login') {
            steps {
                script {
                    // Execute the 'az login' command
                   sh 'az login'
                    // sh "az login --service-principal -u ${AZURE_CLIENT_ID} -p ${AZURE_SECRET_ID} --tenant ${AZURE_TENANT_ID}"
                   // sh "az account set -s ${SUBSCRIPTION_ID}"
                }
            }
        }
        
        stage('Terraform Init') {
            steps {
                 dir('terraform') {
                    sh 'terraform init'
                }
            }
        }
        
       stage('Terraform Plan') {
            steps {
                dir('terraform') {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        
       stage('Terraform Apply') {
            steps {
                dir('terraform') {
                    sh 'terraform apply -auto-approve tfplan'
                    sh 'terraform destroy'
                }
            }
        }
         stage('Terraform Destroy') {
            steps {
                dir('terraform') {
                    sh 'terraform destroy'
                }
            }
        }
    }
}
