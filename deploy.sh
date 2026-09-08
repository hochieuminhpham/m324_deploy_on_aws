#!/bin/bash
cd /home/ubuntu/m346-ref-card-01
git pull
pkill -f 'architecture-refcard-01' || true
mvn package -q
nohup java -jar target/architecture-refcard-01-0.0.1-SNAPSHOT.jar > app.log
2>&1 &
