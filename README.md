# airflow-docker

## Installation
Clone this repository.
```
git clone https://github.com/piyush-singhal/airflow-docker.git
```

## Docker Compose
To Spin up docker container follow the below steps. 

1. First, copy the `sample.env` file to `.env` and change the values in the `.env` file. if you add some variable into your `.env` file, it also has to be present in sample.env. 
```
cp sample.env .env
```
2. Change the credentials of admin user in `.env` file. Admin user will be created at the time of installation.

3. Run the below command from the project's root directory. Please make sure `docker-compose.yml` file exists in the directory from where you are running this command.
```
docker-compose up
```
If you do some changes in the `Dockerfile` and want to rebuild the image pass the `--build` argument to rebuild image.

```
docker-compose up --build
```

After this step your system will have airflow and Postgres installed inside docker. 

Run below command to stop containers and removes containers, networks, volumes, and images created by up.
```
docker-compose down
```

## UI Links
- Airflow: [localhost:8080](http://localhost:8080/)

Login with the credentials entered in installation steps in `.env` file
