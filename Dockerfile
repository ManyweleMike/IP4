FROM node:14
# update the package lists
RUN apt-get update 
RUN apt-get install -y nodejs npm





EXPOSE  3000 27017

CMD ["npm","start"]

 