docker --version
echo ${CI_REGISTRY_PWD} | docker login -u "${CI_REGISTRY_USER}" --password-stdin
