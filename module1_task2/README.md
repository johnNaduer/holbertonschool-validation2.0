# Website README

## Prerequisites

Before building the website, you must have the following installed on your computer:

- Go-Hugo
- GNU Make version 3.81 or 4.0

## Lifecycle

This website follows the DevOps methodology for its lifecycle. The following steps are available via the Makefile:

- `build`: Generate the website from the markdown and configuration files in the directory `dist/`.
- `clean`: Cleanup the content of the directory `dist/`.
- `post`: Create a new blog post whose filename and title come from the environment variables `POST_TITLE` and `POST_NAME`.

Each of these steps can be executed by running the command `make <step>`, where `<step>` is the name of the step.

## Makefile Targets

- `build`: Generate the website from the markdown and configuration files in the directory `dist/`.
- `clean`: Cleanup the content of the directory `dist/`.
- `post`: Create a new blog post whose filename and title come from the environment variables `POST_TITLE` and `POST_NAME`.

To see the usage of each target, run the command `make help`.

## Command Line Help

To see a list of available targets and their usage, run the command `make help`.
