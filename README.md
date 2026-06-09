<p align="center">
  <img src="assets/banner.png" width="100%" height="200" alt="Git & GitHub Navigator Banner">
</p>

<h1 align="center">🐙 Git & GitHub Navigator</h1>

<p align="center">
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white" alt="HTML5">
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white" alt="CSS3">
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="JavaScript">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker">
  <img src="https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=jenkins&logoColor=white" alt="Jenkins">
  <img src="https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white" alt="Nginx">
</p>



An interactive, premium, dark-themed single-page guide to mastering version control, collaboration, and repository management.

---

## 🚀 View Live Site

The project is live and accessible online.

<a href="https://ajaygangwar945.github.io/Git-GitHub-Navigator/">
    <img src="https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-007ec6?style=for-the-badge&logo=github&logoColor=white" alt="Live Demo" /></a>

---

## 🚀 Live Demo & Visuals
The page features a responsive web interface built using Vanilla HTML, CSS, and JS. It includes:
* **Interactive Terminal Shell Emulator**: Runs common Git commands (`git init`, `git add`, `git commit`, `git push`, `git log`) in a simulated terminal environment.
* **Custom Cursor**: Follows mouse position with a smooth damping outer ring for a high-end feel.
* **Dynamic Hover Glow Effects**: Background gradient shifts dynamically on cards corresponding to mouse movements.
* **One-Click Copy Utility**: Easily copy essential Git commands with toast notifications.
* **Responsive Layout**: Designed to look stunning on both desktop and mobile screens (featuring a morphing hamburger menu).

---

## 🛠️ Tech Stack & Architecture
* **Frontend**: HTML5, CSS3, ES6 JavaScript.
* **Containerization**: `Dockerfile` based on `nginx:alpine`.
* **CI/CD**: `Jenkinsfile` configuring SCM polling, Docker Hub authentication, and automated builds/pushes.

---

## 📦 Containerization & Local Setup

The application is dockerized using a lightweight Nginx image to serve the static page efficiently.

### How to Run Locally with Docker

To run the containerized application on your local machine, execute the following commands in your terminal:

1. **Build the Docker Image**:
   ```bash
   docker build -t git-github-navigator .
   ```

2. **Run the Container**:
   Map port `80` inside the container to port `8080` (or any other port) on your local machine:
   ```bash
   docker run -d -p 8080:80 --name navigator-app git-github-navigator
   ```

3. **Access the Application**:
   Open your browser and navigate to:
   👉 [http://localhost:8080](http://localhost:8080)

---

## 🏗️ Project Directory Structure

Here is the directory structure of the repository:

```text
Git-&-GitHub-Navigator/
├── .dockerignore        # Excludes Git directories and logs from the Docker build context
├── .gitignore           # Excludes local developer files and metadata from version control
├── Dockerfile           # Standard container configuration using Nginx
├── Jenkinsfile          # Jenkins Declarative pipeline for automated CI/CD builds
├── index.html           # Main code file (self-contained HTML, CSS styles, and JavaScript)
├── README.md            # Modern documentation page with badges, setup, and structure details
├── documentation.txt    # In-depth design guidelines, features, and pipeline explanations
└── assets/
    └── banner.png       # Generated custom tech-themed horizontal banner
```

---

## 🤖 Jenkins CI/CD Pipeline

The project includes automated integration and deployment configurations via a declarative Jenkins pipeline.

### Pipeline Stage Details

* **SCM Polling**: Automatically checks the remote repository every 1 minute (`pollSCM('* * * * *')`) to trigger builds on new commits.
* **Docker Authentication**: Safely logs in to Docker Hub using credential masking (`dockerhub-creds` configured in Jenkins).
* **Multi-Tag Build**:
  - Builds the Docker image and tags it with the unique build number: `ajaygangwar945/git-github-navigator:${BUILD_NUMBER}`
  - Also tags it as the `latest` build: `ajaygangwar945/git-github-navigator:latest`
* **Registry Publish**: Automatically pushes both images to the user's Docker Hub repository.
* **Post-Build Cleanup**: Always performs a `docker logout` on the Jenkins build agent to ensure credentials are secure and cleaned up.

---

## 📖 Detailed Documentation
For a deep dive into the design decisions, code explanations, Docker setup, and the Jenkins pipeline stages, please refer to:
👉 **[documentation.txt](documentation.txt)**

---

## 🤝 Contributing & Support

This navigator is built as a hands-on tool for learning and reference. If you have suggestions or want to add advanced workflows:
1. **Fork the repo** and create your feature branch: `git checkout -b feature/cool-new-feature`
2. **Commit your changes**: `git commit -m 'Add some cool feature'`
3. **Push to the branch**: `git push origin feature/cool-new-feature`
4. **Open a Pull Request**!

*Happy branching, merging, and version controlling!* 🚀


