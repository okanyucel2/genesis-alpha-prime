# Genesis Alpha Prime

VisionGuard Circuit Breaker Pilot Project

## Purpose

This minimal project demonstrates the VisionGuard circuit breaker pipeline:

1. **GitHub Push** triggers webhook
2. **Local Simulation** builds and runs Docker container
3. **Screenshot Capture** takes visual snapshot
4. **VisionGuard Verification** validates UI against assertions
5. **Deploy/Block** based on visual verification result

## Local Development

```bash
# Build Docker image
docker build -t genesis-alpha-prime .

# Run container
docker run -p 8080:80 genesis-alpha-prime

# Access at http://localhost:8080
# Health check at http://localhost:8080/health
```

## VisionGuard Assertions

The following visual assertions are verified before deployment:

- Page loads without errors
- Header "Genesis Alpha Prime" is visible
- Status indicator shows operational
- VisionGuard badge is present
- No broken layout or overlapping elements

## Files

- `index.html` - Main page with visual elements
- `health.html` - Health check endpoint (JSON response)
- `nginx.conf` - Nginx configuration
- `Dockerfile` - Container build configuration
- `visionguard.json` - Visual verification assertions

## Deployment

This project uses auto-deploy disabled on Render. Deployments are triggered
only after passing VisionGuard visual verification.
