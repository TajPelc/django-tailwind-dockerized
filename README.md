# Docker (Django + Tailwind)

Recently, I wanted to integrate Tailwind into Django. All the tutorials that I've found assume that you have Django or Node installed locally.

I prefer to run all my development through Docker to not have to deal with anything locally.

So, I've made this dockerized template for a fresh Django install.

Features:
- Flat folder structure inside /app
- Runs the tailwind watcher in a separate container. Scans the static folder, takes input.css and writes to output.css
- Plays nicely with the default styling of the /admin app, something I had to resolve.

Feel free to modify as required to suit your needs.

## Usage

- Clone the repository

#### Spin up the containers
`docker-compose up -d`

### manage.py proxy

Because Django now runs in docker, you need to proxy commands to the docker instance. I created a handy script for that.

`./django_manage.sh <command>`

Example:

`./django_manage migrate`

#### Shell access

`./open_shell.sh`

## Bonus: Visual Studio Code: Dev Containers
To get full access to code completion and the python interpreter, attach to the container once it's up to edit the Python code using Dev Containers.
