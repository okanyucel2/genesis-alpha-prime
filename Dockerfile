# Genesis Alpha Prime - VisionGuard Pilot Project
# Minimal nginx static site for circuit breaker testing

FROM nginx:alpine

# Copy static content
COPY index.html /usr/share/nginx/html/
COPY health.html /usr/share/nginx/html/

# Copy custom nginx config for health endpoint
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 (Render uses this by default)
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD wget --quiet --tries=1 --spider http://localhost/health || exit 1
