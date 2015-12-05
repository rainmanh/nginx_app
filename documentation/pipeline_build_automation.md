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
7.1 a job which will build the code
7.2 a job which will be triggered if the code is built successfully and it will transfer the new file to the servers


7.1 a job which will build the code

* I introduce the github project: https://github.com/rainmanh/nginx_app
* Defined the git repository
* There are 2 ways of triggering the build:
  *  When something changes in the Remote Repo the build will be triggered
  *  Setting up a Poll we say... every minute and when a change has been detected it will pull the changes.

* there is an script that will copy the SOURCE code from the repo into a temp file and it will run the build there.
*  If the job has been flagged as succesful it will trigger the build of the other job to transfer the newly built files otherwise it will break the process.(It might email ..etc...)


7.2 A job which will be triggered if the code is built successfully and it will transfer the new file to the servers
