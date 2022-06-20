# Fivem Docker

## Requirements

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- Specifications:
  - 1CPU core
  - 1GB RAM
  - at least 2GB Disk

## Installation

- Clone the repository
- (Optional) Change the Cfx.re version in `Dockerfile`
- Run `docker-compose up`.
  - It will download the latest version of mariadb.
  - It will build the Docker image.
  - It will automatically forward ports and map volumes.

## Running

### Once docker compose is running:

- Open http://localhost:40120 and authenticate.
- Configure the server as you would normally.
- If you need the mysql server you can access it using the host `mariadb`, user `root` and no password.

## File structure

- data folder is where the txData folder would be
- database folder is for the mysql database
