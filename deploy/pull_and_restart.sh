sshpass -e ssh -p 53677 -o StrictHostKeyChecking=no -o IdentitiesOnly=yes -o PreferredAuthentications=password -o PubkeyAuthentication=no "$DEPLOYMENT_SERVER_USER"@"$DEPLOYMENT_SERVER_IP" <<EOF
  docker stop ${CONTAINER_NAME}
  docker rm ${CONTAINER_NAME}
  echo ${CI_REGISTRY_PWD} |  docker login -u "${CI_REGISTRY_USER}" --password-stdin
  docker pull ${CI_DOCKERHUB_REPO}:latest
  docker run -itd -p 8000:5000 --name ${CONTAINER_NAME} ${CI_DOCKERHUB_REPO}:latest
EOF
