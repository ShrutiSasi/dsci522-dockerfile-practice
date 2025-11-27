# Extend the Jupyter minimal-notebook image
FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Copy conda-linux-64.lock file into the container
COPY conda-linux-64.lock /tmp/conda-linux-64.lock

# Install packages from the lock file
RUN conda create --name docker_practice_env --file /tmp/conda-linux-64.lock && \
    conda clean --all -y

# Set environment 
ENV PATH=/opt/conda/envs/docker_practice_env/bin:$PATH

# Default command 
CMD ["bash"]
