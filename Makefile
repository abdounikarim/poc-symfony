DOCKER_COMPOSE = docker compose

.PHONY: install install-prod reset env logs tests help

install: ## Install project in dev environment
	$(DOCKER_COMPOSE) build
	$(DOCKER_COMPOSE) up -d

install-prod: ## Install project in prod environment
	$(DOCKER_COMPOSE) -f compose.yaml -f compose.prod.yaml build
	$(DOCKER_COMPOSE) -f compose.yaml -f compose.prod.yaml up -d

reset: ## Reset the project with fresh images and configuration
	$(DOCKER_COMPOSE) down --remove-orphans --volumes
	$(DOCKER_COMPOSE) build --no-cache
	$(DOCKER_COMPOSE) up -d

env: ## Show environment
	$(DOCKER_COMPOSE) exec php bin/console

logs: ## Show logs
	$(DOCKER_COMPOSE) logs -f

tests: ## Run tests
	$(DOCKER_COMPOSE) exec php bin/phpunit

help: ## Display help
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-20s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

.DEFAULT_GOAL := 	help
