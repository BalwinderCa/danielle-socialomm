# Laravel MixPost Enterprise - Docker Setup

This project is now configured to run with Docker, which provides a consistent development environment across different machines.

## 🐳 Quick Start

### Prerequisites
- Docker Desktop installed and running
- Git (for cloning the repository)

### Starting the Application

1. **Start all containers:**
   ```bash
   ./docker-commands.sh start
   ```
   or
   ```bash
   docker-compose up -d
   ```

2. **Access the application:**
   - Main application: http://localhost:8000
   - MixPost dashboard: http://localhost:8000/mixpost

## 📋 Available Commands

Use the helper script for common operations:

```bash
./docker-commands.sh [command]
```

### Commands:
- `start` - Start all containers
- `stop` - Stop all containers  
- `restart` - Restart all containers
- `logs` - Show all logs
- `app-logs` - Show app logs
- `db-logs` - Show database logs
- `shell` - Open shell in app container
- `migrate` - Run migrations
- `migrate-fresh` - Run fresh migrations
- `seed` - Run seeders
- `cache-clear` - Clear all caches
- `build` - Build and start containers
- `status` - Show container status
- `url` - Show application URLs

## 🏗️ Architecture

The Docker setup includes:

- **PHP 8.3-FPM** - Laravel application server
- **MySQL 8.0** - Database
- **Redis 7** - Cache and session storage
- **Nginx** - Web server

## 🔧 Configuration

### Environment Variables
The application uses the following Docker-optimized configuration:

- **Database**: MySQL (host: `db`, database: `mixpost_db`)
- **Cache**: Redis (host: `redis`)
- **Sessions**: Redis
- **Queue**: Redis

### Ports
- **8000** - Web application (Nginx)
- **3306** - MySQL database
- **6379** - Redis

## 🚀 Development Workflow

### Making Code Changes
1. Edit files in your local directory
2. Changes are automatically reflected in the container
3. Clear cache if needed: `./docker-commands.sh cache-clear`

### Database Operations
- Run migrations: `./docker-commands.sh migrate`
- Fresh migrations: `./docker-commands.sh migrate-fresh`
- Run seeders: `./docker-commands.sh seed`

### Debugging
- View logs: `./docker-commands.sh logs`
- Access shell: `./docker-commands.sh shell`

## 🛠️ Troubleshooting

### Container Issues
```bash
# Check container status
./docker-commands.sh status

# View logs
./docker-commands.sh logs

# Restart containers
./docker-commands.sh restart
```

### Database Issues
```bash
# Check database logs
./docker-commands.sh db-logs

# Rebuild containers
./docker-commands.sh build
```

### Cache Issues
```bash
# Clear all caches
./docker-commands.sh cache-clear
```

## 📁 Project Structure

```
danielle-socialomm/
├── docker-compose.yml          # Docker services configuration
├── Dockerfile                  # PHP application container
├── docker-commands.sh         # Helper script for common commands
├── docker/                    # Docker configuration files
│   ├── nginx/                 # Nginx configuration
│   ├── php/                   # PHP configuration
│   └── mysql/                 # MySQL configuration
└── .env                       # Environment variables (Docker-optimized)
```

## 🔐 Security Notes

- This is a development setup
- Database passwords are set to default values
- For production, update passwords and security settings

## 🎉 Success!

Your Laravel MixPost Enterprise application is now running in Docker containers. The application should be accessible at:

- **http://localhost:8000** - Main application
- **http://localhost:8000/mixpost** - MixPost dashboard

The application will redirect you to the installation page where you can complete the setup process. 