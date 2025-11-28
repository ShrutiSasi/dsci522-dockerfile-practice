# dsci522-dockerfile-practice
Creating Docker images from Dockerfiles

## Steps:
1. Creating an `environment.yml` file with conda environment (pinned versions of packages).
2. Creating a `conda-lock.yml` file of the conda environment.
    - `conda-lock lock -f environment.yml`
3. Building and running a docker container using `Dockerfile` that extends Jupyter's minimal-notebook image.
    - Refer image from condaforge/miniforge3:latest
    - Run command to install the packages from the lock file
    - `docker build --tag dsci552_dockerfile_practice .`
4. Running the docker container locally using the docker-compose.yml file.
    - `docker-compose up`
5. Adding GitHub Actions workflow
    - `docker-publish.yml` to automate Docker image build and deployment to docker hub process

dockerhub image: https://hub.docker.com/r/shrutisasi14/dsci522-dockerfile-practice
