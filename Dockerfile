FROM node:13-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json /app/package.json
RUN npm install --silent
COPY . .
CMD ["npm", "start"]
# rodar 1º - docker build -t react-ohif .
# rodar 2º - docker run -v ${PWD}:/app -v /app/node_modules -p 3001:3000 --rm react-ohif
# estará rodando na porta 3001