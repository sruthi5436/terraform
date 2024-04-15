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
       
    }
    
    stages {
        // stage('Build') {
        //     steps {
        //         // Checkout source code from version control
        //         git 'https://github.com/sruthi5436/terraform.git'
                
        //         // Build Java application using Maven
        //         sh 'mvn clean package'
        //     }
        // }
        //  stage('Checkout') {
        //     steps {
        //         script {
        //             withCredentials([string(credentialsId: env.GITHUB_TOKEN_CREDS1, variable: 'GITHUB_TOKEN')]) {
        //                 git branch: 'main', url: 'https://github.com/your/repository.git', 
        //                     credentialsProvider: [
        //                         usernamePassword(
        //                             password: env.GITHUB_TOKEN_CREDS1,
        //                             username: ''
        //                         )
        //                     ]
        //             }
        //         }
        //     }
        // }
        stage('Terraform Apply') {
            steps {
                // Checkout Terraform configurations from version control
        git branch: 'main', credentialsId: env.GITHUB_TOKEN_CREDS, url: 'https://github.com/your/repository.git'

            //  git 'https://github.com/sruthi5436/terraform.git'
                
                // Initialize Terraform
                sh 'terraform init'
                
                // Apply Terraform configurations to create infrastructure
                sh 'terraform apply -auto-approve'
            }
        }
        
    }
}





