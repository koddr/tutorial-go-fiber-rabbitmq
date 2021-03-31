# 📖 Tutorial: Working with RabbitMQ in Golang by examples

This tutorial is more aimed at those who just want to understand how to working with a message broker in Go.

👉 The full article is published on **March 31, 2021**, on Dev.to: https://dev.to/koddr/working-with-rabbitmq-in-golang-by-examples-2dcn

## Quick start

1. Install [Docker](https://www.docker.com/get-started), Docker Compose and start their system services.
2. Run containers with the RabbitMQ, [Fiber](https://github.com/gofiber/fiber) and consumer by this command:

```bash
make run
```

3. Make HTTP request to the API endpoint:

```console
curl \
    --request GET \
    --url 'http://localhost:3000/send?msg=test'
```

4. Go to RabbitMQ awesome dashboard [localhost:5672](http://localhost:5672) and see `QueueService1` queue with sent messages:

![Screenshot](https://user-images.githubusercontent.com/11155743/113058619-0bec2480-91b7-11eb-9f0f-1102ea69f2fd.png)

## ⚠️ License

MIT &copy; [Vic Shóstak](https://shostak.dev/) & [True web artisans](https://1wa.co/).
