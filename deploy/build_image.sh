docker build -t ${CI_DOCKERHUB_REPO}:latest --pull .
docker push ${CI_DOCKERHUB_REPO}:latest
