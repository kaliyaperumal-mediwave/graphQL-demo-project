FROM node:20.11.0-alpine3.19 

# Create app directory
#RUN mkdir -p /app
WORKDIR /app

# ADD cert/* /tmp/cert/
#
# RUN apk add --no-cache ca-certificates
# RUN cp -R /tmp/cert/* /usr/local/share/ca-certificates
# RUN update-ca-certificates

# Bundle app source
COPY . .

# Mount persistent storage
#VOLUME /app/data
#VOLUME /app/public/uploads

# ENV NODE_TLS_REJECT_UNAUTHORIZED 0
EXPOSE 3000
CMD [ "npm", "start" ]
