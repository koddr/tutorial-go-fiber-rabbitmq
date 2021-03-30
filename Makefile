.PHONY: run docker.network docker.rabbitmq

run:
	go run main.go

docker.rabbitmq:
	docker run --rm -d \
		--name dev-rabbitmq \
		--hostname dev-rabbitmq \
		--network dev-network \
		-v ${HOME}/dev-rabbitmq-1:/var/lib/rabbitmq \
		-p 5672:5672 \
		-p 15672:15672 \
		rabbitmq:3-management