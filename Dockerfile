#Specify the docker base image
From node:8.15.0 as builder

#Selecting the working directorys
#WORKDIR "/src/app"
WORKDIR "/"
COPY package.json /


#installing the dependencies
RUN npm install

#copying the code in the container in folder /src/app
COPY . .
#starting the application
EXPOSE 3000
RUN npm run build
#CMD ["npm", "start"]
