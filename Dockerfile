# -----------------------------
# Stage 1: Build with Node
# -----------------------------
FROM node:20-alpine AS builder

WORKDIR /app

# Install dependencies
# 1) Copy only package manager files first for better caching
COPY package.json package-lock.json* pnpm-lock.yaml* yarn.lock* ./
# Use npm (switch to pnpm/yarn if your project does)
RUN npm ci --include=dev

# 2) Copy the rest of the sources
COPY . .

# Type check (optional but recommended for CI)
# RUN npm run type-check

# Build production assets
RUN npm run build

# -----------------------------
# Stage 2: Run with Nginx
# -----------------------------
FROM nginx:alpine AS runner

# Remove default config and add an SPA-friendly one
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy built assets from builder
COPY --from=builder /app/dist /usr/share/nginx/html

# Healthcheck (optional)
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -qO- http://localhost/ || exit 1

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
