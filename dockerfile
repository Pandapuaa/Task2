
# Use Ubuntu base image
FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Install bash (already available) and core utilities like grep (already in Ubuntu)
# But let's ensure file permissions and dependencies are okay
RUN apt-get update && apt-get install -y \
    bash \
    grep \
    && rm -rf /var/lib/apt/lists/*

# Copy the notes.sh script into the container
COPY notes.sh .

# Make the script executable
RUN chmod +x notes.sh

# Optional: Define a volume to persist notes
VOLUME ["/app"]

# Default command: list all notes
CMD ["./notes.sh", "list"]

