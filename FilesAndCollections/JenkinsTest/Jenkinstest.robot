*** Settings ***
Library    JenkinsLibrary



*** Test Cases ***
Jenkins Create And Run Job
    #[Setup]    Set Jenkins Server    url=http://localhost:8080    username=mosesadelere    password=helper83-
    [Setup]    Set Jenkins Server    url=http://example.com:8080    username=admin    password=admin
    Create Jenkins Job    nextjob2
    #Start Jenkins Job    myjob2