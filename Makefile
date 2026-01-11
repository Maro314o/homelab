.PHONY: run stop update_db 

run:  
	docker-compose up -d  --remove-orphans
stop:
	docker-compose down
