# Spark 0.7.3 (Compiled for CDH4)

## Usage
```
docker run -d spark sh master.sh
docker run -d spark sh worker.sh spark://$MASTERIP:$MASTERPORT
docker run -i -t -e MASTER=spark://$MASTERIP:$MASTERPORT sh [py]shell.sh
```
