# dsci522-dockerfile-practice
Creating Docker images from Dockerfiles

## Steps:
1. Creating an `environment.yml` file with conda environment (pinned versions of packages).
2. Creating a `conda-linux-64.lock` file of the conda environment for the linux operating system.
    - `conda-lock -k explicit --file environment.yml -p linux-64`
3. Building and running a docker container using `Dockerfile` that extends Jupyter's minimal-notebook image.
    - Refer image from quay.io/jupyter/minimal-notebook:afe30f0c9ad8
    - Copy the lock file to a tmp folder in the container
    - Run command to install the packages from the lock file
    - `docker build --tag docker_practice_env .`
4. Running the docker container locally using the docker-compose.yml file.
    - `docker-compose up`
5. Adding GitHub Actions workflow
    - `docker-publish.yml` to automate Docker image build and deployment to docker hub process

dockerhub image: https://hub.docker.com/repository/docker/shrutisasi14/dsci522-dockerfile-practice/image-management
