FROM node:6.2

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install SourceJS
RUN mkdir sourcejs
WORKDIR /usr/src/app/sourcejs
RUN git clone https://github.com/sourcejs/init.git -b npm .
RUN npm install sourcejs --save

# Install KBC Style Guide Bundle
WORKDIR /usr/src/app/sourcejs/specs
RUN rm -rf *
RUN git clone https://github.com/keboola/kbc-style-guide-bundle.git
WORKDIR /usr/src/app/sourcejs/specs/kbc-style-guide-bundle
RUN npm install
RUN npm install -g grunt
RUN grunt less

# Start the app
WORKDIR /usr/src/app/sourcejs
EXPOSE 8080
CMD [ "npm", "start" ]


