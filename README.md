# Docker Compose Django Projects

A pretty simplified docker-compose workflow that sets up a Django, PostgreSQL, network of containers for local development.

## Usage

To get started, make sure you have [Docker installed](https://docs.docker.com/docker-for-mac/install/) on your system, and then clone this repository.

First open a terminal and from this cloned respository's, update the requirements.txt file to make sure all python libraries are there, by default I only include Django and Flake8. On root project directory run `docker-compose build`.

If staring from scratch run the command `docker-compose run python sh -c "django-admin startproject config ."`

Once the project is create run `docker-compose up -d --build`. Open up your browser of choice to [http://localhost:8000](http://localhost:8000) and you should see your Laravel app running as intended. **Your Django app needs to be in the src directory first before bringing the containers up, otherwise the artisan container will not build, as it's missing the appropriate file.**

Containers created and their ports (if used) are as follows:

- **django** - `:8000`
