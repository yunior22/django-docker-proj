# Docker Compose Django Projects

A pretty simplified docker-compose workflow that sets up a Django, PostgreSQL, network of containers for local development.

## Usage

To get started, make sure you have [Docker installed](https://docs.docker.com/docker-for-mac/install/) on your system, and then clone this repository.

First open a terminal and from this cloned respository's, update the requirements.txt file to make sure all python libraries are there, by default I only include Django and Flake8. On root project directory run `docker-compose build`.

If staring from scratch run the command `docker-compose run python sh -c "django-admin startproject config ."`

Once the project is create run `docker-compose up -d --build`. Open up your browser of choice to [http://localhost:8000](http://localhost:8000) and you should see your Laravel app running as intended. **Your Django app needs to be in the src directory first before bringing the containers up, otherwise the artisan container will not build, as it's missing the appropriate file.**

Containers created and their ports (if used) are as follows:

- **django** - `:8000`

## Commands

Add the following aliases to you `.zshrc` file.

```
# Docker & Docker-Compose Aliases
alias doc:run="docker-compose run "
alias doc:build="docker-compose build"
alias doc:up="docker-compose up"
alias doc:down="docker-compose down"
alias doc:ps="docker-compose ps"
alias doc:start="docker-compose start"
alias doc:stop="docker-compose stop"
alias doc:purge="docker system prune -a"

# Django Docker Commands Aliases
alias doc:rundjango="doc:run webserver sh -c"
alias doc:djangotest="doc:run webserver sh -c 'python manage.py test && flake8'"
alias doc:djangomigrations="doc:run sh -c 'python manage.py makemigrations'"
alias doc:djangosuperuser="doc:run webserver sh -c 'python manage.py createsuperuser'"
```
