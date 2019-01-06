Emoji Search using the docker image and deploying in AWS elasticbeanstalk
#Emoji-search.jpg contain Architecture Diagram
#Screenshot of application is available in file Executable_app.docx

Below are Step involved in creating docker image and deploying using travis CI
1.Developer will push the code in the Git Hub Repo (https://github.com/akshayagathia/emoji-search)
2.travis CI will view the change and will Trigger the Built (File : .Travis.yml)
3.Travis will build the image using Dockerfile.dev and test the Application.
4.After Successful Test , Travis CI will push the image AWS elasticbeanstalk .
5.AWS elasticbeanstalk will read the dockerfile from the buildcode and Run the image


Technologies Used

SCM Tools  : Git Hub
Build Tool : Travis CI
Infrastructure deployment Automation & orchestration : Docker
Cloud Technologies : AWS

Security :
AWS_SECRET_KEY and AWS_ACCESS_KEY file are Encrypted in .travis.yml file
Only port 3000 is open in Docker

                           
