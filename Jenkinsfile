pipeline {  
    agent any

    stages {
        stage('Init'){
            steps{
      withCredentials([azureServicePrincipal('AZURE_SP')]) {
      sh '''
 export ARM_CLIENT_ID=$AZURE_CLIENT_ID
export ARM_CLIENT_SECRET=$AZURE_CLIENT_SECRET
export ARM_TENANT_ID=$AZURE_TENANT_ID
export ARM_SUBSCRIPTION_ID=$AZURE_SUBSCRIPTIONS_ID
terraform -version
terraform init -input=false -backend-config="resource_group_name=devops" -backend-config="storage_account_name=devopssonali" -backend-config="container_name=devops" -backend-config="key=terraform.tfstate"
terraform fmt -check -recursive
terraform validate
  '''
      }
   }
        }
        stage('plan') {
            steps {
                echo 'Planning..'
            }
        }
        stage('apply') {
            steps {
                echo 'Applying....'
            }
        }
    }
}