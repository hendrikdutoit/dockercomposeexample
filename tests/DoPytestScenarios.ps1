# DoPytestScenarios.ps1
& ./SetUpDocker.ps1 -Variant standard
& ./SetUpDocker.ps1 -Variant include

docker compose -f docker-compose-multifile.yaml down -v
docker compose -f docker-compose-multifile.yaml rm --force
docker volume prune -a  --force
docker builder prune --force
$DockerName = "$env:PROJECT_NAME".ToLower() + "_multifile"
docker-compose -p $DockerName -f docker-compose-multifile.yaml -f docker-compose-redis-3.yaml up -d

pytest
