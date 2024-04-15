pipeline {
    agent any
   environment {
        AZURE_CLIENT_ID = credentials('azure-client-id')
        AZURE_TENANT_ID = credentials('azure-tenant-id')
        AZURE_OBJECT_ID = credentials('azure-object-id')
        AZURE_SECRET_ID = credentials('azure-secret-id')
        GITHUB_CREDENTIALS_ID = credentials('github-credentials-id')
        GITHUB_TOKEN_CREDS = credentials('github-token-credential-id')
        GITHUB_TOKEN_CREDS1 = credentials('github_ptoken')
        SUBSCRIPTION_ID = credentials('subscription_id')  
    }
    
    stages {
         stage('Checkout') {
            steps {
                script {
                    withCredentials([string(credentialsId: github-token-credential-id, variable: 'GITHUB_TOKEN')]) {
                        git branch: 'main', url: 'https://github.com/your/repository.git', 
                            credentialsProvider: [
                                usernamePassword(
                                    password: github-token-credential-id,
                                    username: ''
                                )
                            ]
                    }
                }
            }
        stage('Terraform Apply') {
            steps {
                // Checkout Terraform configurations from version control
               // git 'https://github.com/your/terraform-repo.git'
                
     git branch: 'main', credentialsId: 'github-credentials-id', url: 'https://github.com/sruthi5436/terraform/tree/main/terraform'

                
                // Initialize Terraform
                sh 'terraform init'
                sh 'terraform plan'
                
                // Apply Terraform configurations to create infrastructure
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
        
