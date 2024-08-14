# Use the default Gitpod workspace Docker Image
FROM gitpod/workspace-full

# Start the Threagile Docker Image and have it removed automatically when exited
RUN docker run --rm -it threagile/threagile
