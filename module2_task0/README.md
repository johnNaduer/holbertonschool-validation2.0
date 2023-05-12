#  Build an Application using Make
This is a simple HTTP web server written in Golang that listens to incoming HTTP requests on localhost:9999. It provides the following functionality:

- If a request hits the path** /**,  it returns a **404 Not Found error.**
- If a request hits the path** /health**, it returns the response "ALIVE" if the server is up and running.

## Prerequisites
- Golang must be installed in your environment.

## Getting Started
To initialize the project, run the following command:

```shell
go mod init github.com/<your-github-handle>/awesome-api
```
## Usage
### Build
To compile the source code and create the binary **awesome-api**, use the following command:
```shell
make build
```
### Run
To start the application and run it in the background, execute the following command:

```shell
make run
```
The logs will be written to the file **awesome-api.log**.

### Stop
To stop the application, use the following command:

```shell
make stop
```
### Clean
To stop the application, delete the binary awesome-api, and remove the log file, run the following command:

```shell
make clean
```
### Test
To test the application and ensure it behaves as expected, make sure it is running, and then use the following commands to make HTTP requests:

```shell
curl http://localhost:9999           # Expected output: 404 Page Not Found
curl http://localhost:9999/health    # Expected output: ALIVE
```
Check the application's log file **(awesome-api.log)** to verify that each request to **/health** generates a log entry with the message "HIT: healthcheck".

## Makefile Targets
**build:** Compiles the source code and creates the binary awesome-api.
**run:** Starts the application and writes logs to awesome-api.log.
**stop:** Stops the application.
**clean:** Stops the application, deletes the binary awesome-api, and removes the log file awesome-api.log.
**test:** Tests the application by making HTTP requests.
Note: Ensure that the binary awesome-api does not exist in the source code before running the build target.

Feel free to modify the Makefile according to your requirements.
