Pipeline Build Automation
============================

For the purpose of this exercise I am using the following:

* jenkins
* github webhooks
* Golang

## Instructions

1. install golang in the jenkins box

2. install the github plugin in jenkins 

3. Generate the webhook in github at the following url: https://github.com/rainmanh/nginx_app/settings/hooks

5. Generate a "personal access token" in github (permissions: repo,gist, read:repo_hook, user)

6. Configure jenkins with the URL for the github resource using your login account and the "personal access token" key 

7. Create 2 jobs in jenkins

7.1 a job which will build the code (golangtest in the example) in jenkins called: "upstream"

7.2 a job which will be triggered if the code is built successfully and it will transfer the new file to the servers (golang_filetransfer in the example) in jenkins called "downstream"


### 7.1 a job which will build the code (golangtest in the example)

* I introduce the github project: https://github.com/rainmanh/nginx_app
* Define the git repository (the content will be pulled from master so everything will be left by default)
* There are 2 ways of triggering the build:
  *  When something changes in the Remote Repo the build will be triggered
  *  Setting up a Poll we say... every minute and when a change has been detected it will pull the changes.(I am using the second one)

* After a change has triggered the build, one script will copy the SOURCE code from the repo into a temp directory whereit's going to get built.
*  If the job has been flagged as successful it will trigger the build of the downstream job (golang_filetransfer) so it will transfer the newly built files otherwise it will break the process.(It might email ..etc...)

##### Example of a build failure

![Code Failure](https://github.com/rainmanh/nginx_app/blob/master/images/code_falire.png)


##### Example of a successful build

![success_build_1](https://github.com/rainmanh/nginx_app/blob/master/images/success_build_2.png)


![success_build_2](https://github.com/rainmanh/nginx_app/blob/master/images/success_build_3.png)


### 7.2 (golang_filetransfer) So a job which will be triggered if the code is built successfully and it will transfer the new file to the servers
* the job got defined the condition of running the build if "upstream" golangtest job is successful.
* the job got a script that will copy the built code from Upstream (golangtest) to the target servers.
⋅⋅* it will stop the process in the remote server
⋅⋅* it will copy the new code
⋅⋅* it will start the process in the remote server
⋅⋅* and it will finally run a quick test.



##### Example of Code being transfered after a Successful build on the downstream (golangtest)

![File transfered](https://github.com/rainmanh/nginx_app/blob/master/images/transfering_file_a.png)
![File transfered](https://github.com/rainmanh/nginx_app/blob/master/images/transfering_file_b.png)

