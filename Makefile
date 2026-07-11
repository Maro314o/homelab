.PHONY: run stop update-update

unsafe-update:
	docker compose pull 
	docker compose up -d --wait --remove-orphans
update:
	nohup setsid $(MAKE) unsafe-update > update.log 2>&1 < /dev/null & echo "Started update, PID $$!, see update.log"
run:  
	docker compose up -d  --remove-orphans
stop:
	docker compose down
