FROM node:14-alpine AS dev-stage
WORKDIR /usr/app
ENV PATH /usr/app/node_modules/.bin:$PATH
COPY ./frontend/package.json /usr/app
RUN npm i react-scripts -g && npm i
COPY ./frontend ./

FROM dev-stage  AS build-stage
RUN npm run build

FROM nginx:alpine AS prod-stage
COPY --from=build-stage /usr/app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY ./config/nginx/default.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]
