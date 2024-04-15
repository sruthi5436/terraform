pipeline {
    agent any
   environment {
        AZURE_CLIENT_ID = credentials('azure-client-id')
        AZURE_TENANT_ID = credentials('azure-tenant-id')
        AZURE_OBJECT_ID = credentials('azure-object-id')
        AZURE_SECRET_ID = credentials('azure-secret-id')
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
        
        stage('Terraform Apply') {
            steps {
                // Checkout Terraform configurations from version control
                git 'https://github.com/sruthi5436/terraform.git'
                
                // Initialize Terraform
                sh 'terraform init'
                
                // Apply Terraform configurations to create infrastructure
                sh 'terraform apply -auto-approve'
            }
        }
        
    }
}





