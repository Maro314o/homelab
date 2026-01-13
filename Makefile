.PHONY: run stop

run:  
	docker-compose up -d  --remove-orphans
stop:
	docker-compose down
