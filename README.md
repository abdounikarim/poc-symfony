Hello from Symfony!👋
========================

The "Hello from Symfony!👋" application is just a starter to show a minimalist symfony app.

Requirements
------------

* [Symfony application requirements][1].
* [Docker Desktop][2]

Installation
------------

Clone this repository:

```console
https://github.com/ProofOfConceptFactory/poc-symfony
```

Go on the project root folder:

```console
cd poc-symfony/
```

Usage
-----

Build image for dev:
```console
docker compose build --no-cache
```

Execute this command to launch docker container in dev:
```console
docker compose up -d
```

Then access the application in your browser at the given URL (<https://localhost> by default).

Destroy docker container:
```console
docker compose down --remove-orphans
```

Build image for prod:
```console
docker compose -f compose.yaml -f compose.prod.yaml build
```

Execute this command to launch docker container in prod:
```console
docker compose -f compose.yaml -f compose.prod.yaml up -d
```

Check the app is in prod environment:
```console
docker compose exec php bin/console
```

If you have some trouble, you can check the logs:
```console
docker compose logs -f
```

Tests
-----

Execute this command to run tests:

```console
docker compose exec php bin/phpunit
```

[1]: https://symfony.com/doc/current/setup.html#technical-requirements
[2]: https://www.docker.com/products/docker-desktop/
