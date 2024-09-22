# Use an official Jupyter image as the base image
FROM jupyter/minimal-notebook:latest

# Install Node.js and npm
USER root
RUN apt-get update && \
    apt-get install -y nodejs npm cmake

# Install tslab kernel for TypeScript
USER jovyan
RUN npm install -g tslab \
    && tslab install

# Set working directory
WORKDIR /home/jovyan/work

# Install fp-ts npm package in work directory
RUN npm install fp-ts

# Expose the port for Jupyter Notebook
EXPOSE 8888

# Start Jupyter Notebook
CMD ["start-notebook.sh"]
