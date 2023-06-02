SHELL := /bin/bash

.PHONY: up
up:
	docker-compose up -d --build

.PHONY: down
down:
	docker-compose down

.PHONY: sh
sh:
	docker-compose exec node bash

.PHONY: sass
sass:
	docker-compose exec node ./node_modules/.bin/sass --watch ./scss:./css