# Jenkins Pipeline 

## About the Project
The JenkinsFile need to be at the root directory of you repo

## Prerequisites
Before running this pipeline, ensure that the following tools and services are properly configured:

- Maven: The project uses Maven as its build tool. Make sure the pom.xml file is properly configured in the root directory.
- SonarQube: The pipeline uses SonarQube for code quality analysis. You will need a running SonarQube instance with proper configuration.
- Nexus Repository: A Nexus repository is used for storing artifacts (WAR files). Make sure the Nexus server is accessible with valid credentials.
- Jenkins: The pipeline is designed to run in a Jenkins environment. Ensure Jenkins is set up with the required plugins:
    - Maven
    - SonarQube Scanner
    - Nexus Artifact Uploader