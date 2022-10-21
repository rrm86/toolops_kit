db_run:
	docker-compose up -d

db_shutdown:
	docker-compose down

get_db_img_id:
	docker ps | grep pg_container | cut -d " " -f1

get_database_ip:
	docker inspect $(img_id) | grep IPAddress

get_endpoint_informations:
	curl -v $(ENDPOINT)

how_to_use_param:
	@echo make function $VAR=value