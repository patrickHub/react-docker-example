# from which version of node 
FROM node:10.0.0 

# directory where we are actually going to run the app
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# Environment path where the node_module will be set
ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package.json /usr/src/app/package.json
RUN npm install

# commamd to start the all thing
