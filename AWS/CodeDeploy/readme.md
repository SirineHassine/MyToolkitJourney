# CodeDeploy
AWS CodeDeploy is a fully managed deployment service provided by Amazon Web Services (AWS) that automates the deployment of applications to various computing services, such as Amazon EC2 instances, on-premises servers, or AWS Lambda functions. Here’s a detailed overview of its key features and benefits:

## Key Features
### Automated Deployments: 
CodeDeploy automates the process of deploying application code, which helps in reducing the risk of human error during deployment.

### Support for Multiple Platforms: 
It can deploy applications written in various programming languages and frameworks across multiple platforms, including:
- Amazon EC2
- On-premises servers
- AWS Lambda for serverless applications


### Deployment Strategies: CodeDeploy supports different deployment strategies, including:

-  In-Place Deployments: 
Updates the application on the existing instances, replacing the old version with the new one.
- Blue/Green Deployments: 
Creates a new version of the application alongside the old version, allowing for immediate rollback in case of failure.

### Monitoring and Rollback: 
CodeDeploy integrates with AWS CloudWatch to provide monitoring of deployments. If a deployment fails or does not meet the specified criteria, CodeDeploy can automatically roll back to the previous version.

### Hooks for Customization: You can define lifecycle hooks in your deployment process, allowing you to run custom scripts at various stages of the deployment, such as before or after the application starts.

### Integration with Other AWS Services: CodeDeploy integrates seamlessly with other AWS services, such as:

- AWS CodePipeline: For continuous integration and continuous deployment (CI/CD) workflows.
- AWS CodeBuild: For building and testing applications.
- AWS CloudFormation: For infrastructure as code.
- Version Control: CodeDeploy works with various version control systems, including Git, to help manage application versions during - the deployment process.

## Environment Variables
How to provide context information on the deployment that can be used by the scripts? AWS CodeDeploy environment variables let you do just that. The following environment variables are currently supported:
1.  LIFECYCLE_EVENT : This variable contains the name of the lifecycle event associated with the script.
2.  DEPLOYMENT_ID :  This variables contains the deployment ID of the current deployment.
3.  APPLICATION_NAME :  This variable contains the name of the application being deployed. This is the name the user sets in the console or AWS CLI.
4.  DEPLOYMENT_GROUP_NAME :  This variable contains the name of the deployment group. A deployment group is a set of instances associated with an application that you target for a deployment.
5.  DEPLOYMENT_GROUP_ID : This variable contains the ID of the deployment group in AWS CodeDeploy that corresponds to the current deployment

example : 
if [ "$DEPLOYMENT_GROUP_NAME" == "Staging" ]
then
    sed -i -e 's/LogLevel warn/LogLevel debug/g' /etc/httpd/conf/httpd.conf
fi



# Good documentation to go further : 
https://dev.to/shrihariharidass/aws-codedeploy-2nk8

