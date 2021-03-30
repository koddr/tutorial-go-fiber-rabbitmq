# 📖 Tutorial: Working with RabbitMQ in Golang by examples

This tutorial is more aimed at those who just want to understand how to working with a message broker in Go.

👉 The full article is published on **March 31, 2021**, on Dev.to: _...coming soon..._

## Quick start

1. Rename `.env.example` to `.env` and fill it with your environment values.
2. Install [Docker](https://www.docker.com/get-started).
3. Run project by this command:

```bash
make docker.run
```

4. Go to RabbitMQ GUI: [localhost:5672](http://localhost:5672)

![Screenshot](https://user-images.githubusercontent.com/11155743/113058619-0bec2480-91b7-11eb-9f0f-1102ea69f2fd.png)

5. Make HTTP request to a web server endpoint:

```console
curl \
    --request GET \
    --url 'http://localhost:3000/send?msg=test'
```

## ⚠️ License

MIT &copy; [Vic Shóstak](https://shostak.dev/) & [True web artisans](https://1wa.co/).
