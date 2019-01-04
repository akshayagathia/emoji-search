#Specify the docker base image
From node:8.15.0 as builder

#Selecting the working directory
WORKDIR "/src/app"
COPY package.json /src/app/


#installing the dependencies
RUN npm install

#copying the code in the container
COPY . /src/app
#starting the application
EXPOSE 3000
RUN npm run build
#CMD ["npm", "start"]
