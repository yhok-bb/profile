# Profile

## 概要

- プロフィール情報をWeb上で公開するためのシンプルなアプリケーション

## サイト
https://tonebyte.net/

## セットアップ手順（開発環境）

1. リポジトリをclone
2. `docker compose build`
3. `docker compose up -d`
4. `docker compose exec web bin/rails db:setup`

## 本番環境

1. `docker compose -f docker-compose.prod.yml build`
2. `docker compose -f docker-compose.prod.yml up -d`

## テスト

```
docker compose exec web bin/rails test
```
