.FROM node:15
ADD app.js /app.js
ENTRYPOINT ["node", "app.js"]
