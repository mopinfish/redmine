build:
	docker compose build
start:
	docker compose up -d
stop:
	docker compose down
ps:
	docker compose ps
logs:
	docker compose logs -f
deploy:
	fly deploy
open:
	fly open
