FROM node:lts

# install ssh + git
RUN apt-get update && apt-get install -y \
    openssh-client \
    git \
 && rm -rf /var/lib/apt/lists/*

# enable corepack + yarn
RUN corepack enable  \
    && corepack prepare yarn@stable --activate

# prepare home for 'node' (UID 1000) and its SSH
#RUN mkdir -p /home/node/.ssh && chown -R node:node /home/node

WORKDIR /app

# expose vite dev port
EXPOSE 5173

# default shell
CMD ["bash"]
