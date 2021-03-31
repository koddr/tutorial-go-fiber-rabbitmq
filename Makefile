.PHONY: run stop

run: 
	docker-compose up -d --build

stop: 
	docker-compose down