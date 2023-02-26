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
plugin-test:
	#docker compose exec redmine rake test:engines:all
	docker compose exec redmine bin/rails test plugins/redmine_thin_reports/test/
deploy:
	fly deploy
open:
	fly open
