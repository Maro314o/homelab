.PHONY: run stop unsafe-update pass reboot unsafe-reboot

unsafe-update:
	docker compose pull 
	docker compose up -d --wait --remove-orphans
	docker image prune -f --filter "until=24h"
update:
	nohup setsid $(MAKE) unsafe-update > update.log 2>&1 < /dev/null & echo "Started update, PID $$!, see update.log"
run:  
	docker compose up -d  --remove-orphans
stop-unsafe:
	docker compose down
pass:
	openssl rand -base64 32
unsafe-reboot:
	docker compose down
	docker compose up -d
reboot:
	nohup setsid $(MAKE) unsafe-reboot> update.log 2>&1 < /dev/null & echo "Started reboot"
