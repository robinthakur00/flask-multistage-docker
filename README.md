# Flask-Multistage-Docker with Gunicorn

This repository contains a Flask web application served by Gunicorn, a WSGI HTTP server for Python.

## Overview

This Flask application serves a basic web page using Gunicorn as the production server.

## Prerequisites

- Python 3.x
- Pip (Python package manager)

## Setup

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/your-repo.git
    ```

2. Install dependencies:

    ```bash
    pip install -r requirements.txt
    ```

3. Run the application:

    ```bash
    gunicorn -w 4 app:app
    ```

4. Access the web application in a browser at `http://localhost:5000/`

## File Structure

- `app.py`: Main Flask application file.
- `templates/`: Folder containing HTML templates.
- `requirements.txt`: File listing Python dependencies.
- `Dockerfile`: Docker configuration for containerizing the app.
- `README.md`: This file, providing project information.

## Usage

- Modify `app.py` to extend or customize the Flask application.
- Add HTML/CSS content in the `templates/` folder for your web pages.
- Use Docker to containerize the application for deployment.

## Multi-Stage Docker Build

To reduce the size of the Docker image, a multi-stage build is used in the `Dockerfile`. This separates the build process into multiple stages, resulting in a smaller final image.

## CI/CD with Jenkins

Automate the Continuous Integration and Continuous Deployment (CI/CD) process using Jenkins. Set up Jenkins jobs or pipelines to build and deploy the Flask application.
