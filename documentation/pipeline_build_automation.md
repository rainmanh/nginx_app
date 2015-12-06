Pipeline Build Automation
============================

For the purpose of this exercise I am using the following:

* jenkins
* github webhooks
* Golang

So..
1. install golang in the jenkins box

2. install the github plugin in jenkins 

3. Generate the webhook in github at the following url: https://github.com/rainmanh/nginx_app/settings/hooks

5. Generate a "personal access token" in github (permissions: repo,gist, read:repo_hook, user)

6. Configure jenkins with the URL for the github resource using your login account and the "personal access token" key 

7. Create 2 jobs in jenkins

7.1 a job which will build the code (golangtest in the example)

7.2 a job which will be triggered if the code is built successfully and it will transfer the new file to the servers (golang_filetransfer in the example)


7.1 a job which will build the code

* I introduce the github project: https://github.com/rainmanh/nginx_app
* Defined the git repository
* There are 2 ways of triggering the build:
  *  When something changes in the Remote Repo the build will be triggered
  *  Setting up a Poll we say... every minute and when a change has been detected it will pull the changes.

* there is an script that will copy the SOURCE code from the repo into a temp directory where it will be build.
*  If the job has been flagged as succesful it will trigger the build of the other job (golang_filetransfer) so it will transfer the newly built files otherwise it will break the process.(It might email ..etc...)

##### Example of a build failure

![Code Failure](https://github.com/rainmanh/nginx_app/blob/master/images/code_falire.png)



7.2 A job which will be triggered if the code is built successfully and it will transfer the new file to the servers

##### Example of a successful build

![success_build_1](https://github.com/rainmanh/nginx_app/blob/master/images/success_build_2.png)


![success_build_2](https://github.com/rainmanh/nginx_app/blob/master/images/success_build_3.png)

##### Example of Code being transfered after a Successful build on the downstream (golangtest)

![File transfered](https://github.com/rainmanh/nginx_app/blob/master/images/transfering_file_a.png)
![File transfered](https://github.com/rainmanh/nginx_app/blob/master/images/transfering_file_b.png)

