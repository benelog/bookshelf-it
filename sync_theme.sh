#!/bin/bash
# themes/papercss-hugo-theme 서브모듈을 원격 저장소의 최신 커밋으로 갱신한다.
# 커밋/푸시는 save.sh 로 별도 수행.
set -e
git submodule update --init --remote themes/papercss-hugo-theme
git add themes/papercss-hugo-theme
git submodule status themes/papercss-hugo-theme
