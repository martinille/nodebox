nodebox() {
  docker build -t nodebox1 -f ~/nodebox.Dockerfile ~/scripts && \
  docker run -it --rm \
    --network host \
    -u 1000:1000 \
    -v "$(pwd)":/app \
    -v "$HOME/.ssh":/root/.ssh \
    -w /app \
    nodebox1 bash -c "${*:-bash}"
}

