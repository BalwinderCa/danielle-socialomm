#!/bin/bash

# Docker commands for Laravel MixPost Enterprise

case "$1" in
    "start")
        echo "Starting Docker containers..."
        docker-compose up -d
        ;;
    "stop")
        echo "Stopping Docker containers..."
        docker-compose down
        ;;
    "restart")
        echo "Restarting Docker containers..."
        docker-compose restart
        ;;
    "logs")
        echo "Showing logs..."
        docker-compose logs -f
        ;;
    "app-logs")
        echo "Showing app logs..."
        docker-compose logs -f app
        ;;
    "db-logs")
        echo "Showing database logs..."
        docker-compose logs -f db
        ;;
    "shell")
        echo "Opening shell in app container..."
        docker-compose exec app bash
        ;;
    "migrate")
        echo "Running migrations..."
        docker-compose exec app php artisan migrate --force
        ;;
    "migrate-fresh")
        echo "Running fresh migrations..."
        docker-compose exec app php artisan migrate:fresh --force
        ;;
    "seed")
        echo "Running seeders..."
        docker-compose exec app php artisan db:seed --force
        ;;
    "cache-clear")
        echo "Clearing cache..."
        docker-compose exec app php artisan cache:clear
        docker-compose exec app php artisan config:clear
        docker-compose exec app php artisan route:clear
        docker-compose exec app php artisan view:clear
        ;;
    "build")
        echo "Building Docker containers..."
        docker-compose up -d --build
        ;;
    "status")
        echo "Container status:"
        docker-compose ps
        ;;
    "url")
        echo "Application URL: http://localhost:8000"
        echo "MixPost URL: http://localhost:8000/mixpost"
        ;;
    *)
        echo "Usage: $0 {start|stop|restart|logs|app-logs|db-logs|shell|migrate|migrate-fresh|seed|cache-clear|build|status|url}"
        echo ""
        echo "Commands:"
        echo "  start         - Start all containers"
        echo "  stop          - Stop all containers"
        echo "  restart       - Restart all containers"
        echo "  logs          - Show all logs"
        echo "  app-logs      - Show app logs"
        echo "  db-logs       - Show database logs"
        echo "  shell         - Open shell in app container"
        echo "  migrate       - Run migrations"
        echo "  migrate-fresh - Run fresh migrations"
        echo "  seed          - Run seeders"
        echo "  cache-clear   - Clear all caches"
        echo "  build         - Build and start containers"
        echo "  status        - Show container status"
        echo "  url           - Show application URLs"
        exit 1
        ;;
esac 