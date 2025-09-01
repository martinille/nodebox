# Nodebox 🐳📦

A lightweight **Node.js development environment in Docker**, with Yarn, Git, and SSH support.
Run Node, NPM, Yarn, or Vite without installing them directly on your machine.

---

## 🚀 How to install

### 1. Download the Dockerfile

Save the file to your home directory:

```bash
curl -o ~/nodebox.Dockerfile https://github.com/martinille/nodebox/raw/main/docker/nodebox.Dockerfile
```

### 2. Add the `nodebox` function to your shell

Download the alias function and add it to your `~/.bash_aliases` (or `~/.zshrc`):

```bash
curl -s https://github.com/martinille/nodebox/raw/main/.bash_aliases >> ~/.bash_aliases
```

Reload your shell:

```bash
source ~/.bash_aliases
```

---

## 🛠 Usage

* Open a shell inside the Nodebox:

  ```bash
  nodebox
  ```

* Run any Node.js command (e.g. install dependencies):

  ```bash
  nodebox npm install
  ```

* Start Vite dev server:

  ```bash
  nodebox yarn dev
  ```

The container automatically mounts:

* Your current project folder (`$(pwd)`) → `/app`
* Your local SSH keys (`~/.ssh`) for private repos
* Runs as your local user (`uid:1000`) → no root-owned files

---

## 📖 Why Nodebox?

* Keep your system clean (no global Node/NPM mess)
* Works the same across projects
* Compatible with private repos (SSH support)
* Perfect for Vite or Yarn-based projects

---

## 📜 License

MIT
