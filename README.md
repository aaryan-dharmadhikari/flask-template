Flask Template Application
=============================

This is a template Flask application that can be used to quickly bootstrap a new Flask application.

The project is laid out according to the Flask and pytest best practices.

It includes a GitHub Actions workflow that lints and tests your code. This action can be easily configured to deploy to a CapRover instance (see [Deploy](#deploy)).

## Features

## Usage

### Local Development

Requires Python 3.8 or higher.

Install dependencies:
```shell
pip install -r requirements.txt
```

Run the application:
```shell
python -m flask --app src/myapp run --debug
```

View the application at http://localhost:5000.

### Docker

Requires Docker engine.

Build `myapp` image:
```shell
docker build --tag flask-template-docker .
```

Run `myapp` container:
```shell
docker run -d -p 5000:80 --name myapp flask-template-docker
```

Note: The container is configured to run the application on port 80 inside the container.

View the application at http://localhost:5000.

## Testing

Install test dependencies:
```shell
pip install .[test]
```

Run tests:
```shell
pytest
```

## GitHub Actions

### Linting

The `Lint` action runs `flake8` to check for linting errors.

### Testing

The `Test` action runs `pytest` to run unit tests.

### Deployment

The `Deploy App to CapRover` action packs the application into a tarball and uploads it to CapRover.

For this action to work, the following secrets must be set in the repository:
- `CAPROVER_SERVER`: the URL of the CapRover server.
- `APP_NAME`: the name of the application on CapRover.
- `APP_TOKEN`: the CapRover application token (found under Deployment).

See the [CapRover docs](https://caprover.com/docs/ci-cd-integration/deploy-from-github.html#deploying-directly-from-github) for more information.
