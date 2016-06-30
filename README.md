# KBC SourceJS
Docker image with KBC Style Guide running on SourceJS.

## Usage
Run docker image on your local maschine:

    docker run -p 8080 -d quay.io/keboola/kbc-sourcejs-docker:0.0.2
    docker ps
    
You will see list of your running containers:

    CONTAINER ID    IMAGE                                       COMMAND     CREATED   STATUS    PORTS   
    7571f0b0ccec    quay.io/keboola/kbc-sourcejs-docker:0.0.2   "npm start" 10 s...   Up 11...  192.168.64.2:32768->8080/tcp

Paste the address under the `PORTS` into the browser.
