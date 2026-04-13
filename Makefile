.PHONY: run stop update

update:
	docker compose pull && docker compose up -d --remove-orphans
run:  
	docker compose up -d  --remove-orphans
stop:
	docker compose down
