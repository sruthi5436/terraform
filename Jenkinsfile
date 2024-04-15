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
    
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']],
                extensions: [],
                userRemoteConfigs: [[url: 'https://github.com/sruthi5436/terraform.git']]) 
                
            }
        }


        stage('Azure Login') {
            steps {
                script {
            // Execute 'az login' command
                    sh "az login --service-principal -u ${AZURE_CLIENT_ID} -p ${AZURE_SECRET_ID} --tenant ${AZURE_TENANT_ID}"
                    sh "az account set -s ${SUBSCRIPTION_ID}"
        }
    }
}

     
    stage('Deploy') {
            steps {
                sh label: '', script: "terraform init"
                sh label: '', script: "terraform plan"
                sh label: '', script: "terraform apply -auto-approve"
                //sh label: '', script: "terraform destroy -auto-approve"
            }
        }       
    }
}
