# Terraform  
Terraform is an open-source infrastructure as code (IaC) tool developed by HashiCorp. It allows you to define, provision, and manage cloud infrastructure in a consistent and repeatable manner using configuration files. These configuration files, written in the HashiCorp Configuration Language (HCL) or JSON, describe the desired state of infrastructure, such as servers, databases, networks, and other resources. Terraform then translates these files into API calls to the cloud provider or service to create and manage the infrastructure.


### Steps
* terraform init
* terraform fmt -check
* terraform validate
* terraform plan -out planfile
* terraform apply -auto-approve -input=false -parallelism=1 planfile

