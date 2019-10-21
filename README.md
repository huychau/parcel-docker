# Parcel Docker
Run Parcel inside Docker

## Requirements
- Docker
- Bash script

## Getting Started
### Activate helper scripts
```
source .activate.sh
```
*Note: You can rename Docker image, prefix, etc.*

### Setup to build Docker and install packages
```
parcel-setup
```
*Note: If Dockerfile is not updated. No need run again.*

### Install new packages if any
```
parcel-install package-name --save-dev
```

### Start server
```
parcel-start
```

### Build for production
```
parcel-build
```

## TODOS
- [ ] Support Live Reload
