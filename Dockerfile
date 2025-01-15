# Build stage
FROM node:18 as build-stage

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Build the project
RUN npm run build

# Production stage
FROM nginx:stable-alpine as production-stage

# Copy the built files from .svelte-kit/output
COPY --from=build-stage /app/.svelte-kit/output/client /usr/share/nginx/html

# Copy nginx configuration if you have any custom configs
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]