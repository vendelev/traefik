#!/bin/bash
# удаление завершенных контейнеров:
docker ps --filter status=dead --filter status=exited -aq | xargs -r docker rm -v
# удаление неиспользуемых контейнеров:
yes | docker container prune
# удаление не используемых образов:
yes | docker image prune
# удаление не используемых томов:
yes | docker volume prune
