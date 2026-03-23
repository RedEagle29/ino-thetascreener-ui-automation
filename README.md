# Ino's ThetaScreener Automated Tests
## This automated ui test runs in a docker container. The steps to run the test after you have cloned the repo are as follows:

### Dependencies
python3
docker

### Steps

Update volumes: in docker-compose-ui-automation-local.yml file to local path of the /thetascreener-automation folder
Open a MacOS terminal window
Run the command to set your ip address to a local environment variable
```
export LOCAL_IP=$(ipconfig getifaddr en0)
echo $LOCAL_IP
```
Change directory to the repo. For example,
```
cd ~/Documents/projects/thetascreener-automation/
```
Run the command to create the docker container
```
docker compose -f docker-compose-ui-automation-local.yml up -d
```
Run the command to access the docker container
```
docker exec -it robot bash
```
Change directory to the folder containing the test
```
cd ui_tests/thetascreener/
```
Run the test
```
robot main_header.robot 
```

Test report is generated in the folder