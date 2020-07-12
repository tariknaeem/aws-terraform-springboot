# aws-terraform-springboot

We need to build the jar/war of any java/springboot based app by installing maven and using mvn clean package in target directory and should use artifact from there or instead can save the artifact in to jfrog or any other artifactoryand can use it as well.

The same process can be achieved using Jenkins web hooks and mvn plugins as well. Can can create the build pipelines and to deploy can use deployment pipelines.

But as we are moving towards containerisation so deployment of apps should be on containers with various standards like 12 factor apps deployment etc. Can use loosely coupled micro service based environment with various services like eureka, swagger, circuit breakers etc. these containerised microservices can be deployed on any container orchestration platforms like kubernetes, swarm etc. We have to create deployments and services for the internal and web communications. 

These microservices can also be deployed to pcf as we need to add manifests files for the deployments on pcf and can leverage the already available services like eureka, circuit breakers, mysql abs etc. 

For the deployment on aws servers we can use IaC and can leverage Terraform.
We need to install terraform and update the environment variables and can use providers as  AWS and can use use our keys in multiple ways like can be used in a variable file and the file can be ignored in .gitignore. we can also use it in environment variables.  

We need to create the following resources.


 - RDS mysql instance
 - EB Application Instance
 - EB Application Version
 - EB Application Environment

I have added the required terraform files for the deployments. Currently we are using kuberenetes for the apps deployment and management. 
