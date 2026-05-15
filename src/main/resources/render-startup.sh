#!/bin/bash
if [ -n "$GOOGLE_APPLICATION_CREDENTIALS_JSON" ]; then
  echo "$GOOGLE_APPLICATION_CREDENTIALS_JSON" | base64 --decode > /tmp/sa-key.json
  export GOOGLE_APPLICATION_CREDENTIALS=/tmp/sa-key.json
fi
exec java $JAVA_OPTS -jar target/naive-rag-1.0.0-SNAPSHOT.jar
