# CloudFormation

AWS CloudFormation is a service that allows you to define and provision AWS infrastructure as code. It simplifies the process of creating, managing, and updating AWS resources by using templates, which are written in either JSON or YAML format.

## Key Features of AWS CloudFormation:
1. Infrastructure as Code: CloudFormation allows you to define AWS resources like EC2 instances, S3 buckets, security groups, and more in code. This makes it easier to automate the setup, update, and teardown of environments.

2. Template-Driven: You write templates that describe your resources. These templates are then used to create and manage AWS resources as "stacks." A stack is a collection of resources defined by a CloudFormation template.

3. Simplifies Management: Once a CloudFormation stack is created, you can update or delete all resources in that stack using the same template. You don’t have to manage resources individually, which makes scaling and version control easier.

4. Dependency Management: CloudFormation automatically handles dependencies between resources. For example, if an EC2 instance depends on a security group, CloudFormation will ensure the security group is created before the EC2 instance.

5. Rollback and Change Sets: If an error occurs while updating a stack, CloudFormation can automatically roll back to a previous working state. You can also preview changes with "Change Sets" before applying them to running stacks.