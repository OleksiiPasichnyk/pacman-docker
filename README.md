# Docker Compose Setup for Pacman Game

# Pacman Game Setup with Docker Compose

Run the classic Pacman game using Docker Compose. This setup includes a Node.js-based Pacman application connected to a MongoDB database.

## Prerequisites

- **Docker**: Ensure Docker and Docker Compose are installed on your machine.
- **Initialization Script**: A `mongo-init-db` directory must exist in the same directory as your `docker-compose-deployment-pacman-and-mongo.yaml`. It should contain the `init_user_db.js` script for initializing the MongoDB database.

## Setup Instructions

### 1. Create a Network

Before deploying the services, create a dedicated network for them:

```bash
docker network create pacman-network
```
## start deployment 
docker compose -f docker-compose-deployment-pacman-and-mongo.yaml up -d
## stop deployment
3. docker compose -f docker-compose-deployment-pacman-and-mongo.yaml down
## Have Fun!

# How to launch pacman-docker on EC2
## 
```bash
sudo su
apt update
apt install docker docker-compose -y
git clone https://github.com/OleksiiPasichnyk/pacman-docker.git
cd pacman-docker
docker network create pacman-network
docker-compose -f docker-compose-deployment-pacman-and-mongo.yaml up -d
```
# How to stop
```bash
docker-compose -f docker-compose-deployment-pacman-and-mongo.yaml down
```
