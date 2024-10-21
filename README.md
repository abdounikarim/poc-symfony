Hello from Symfony!👋
========================

The "Hello from Symfony!👋" application is just a starter to show a minimalist symfony app.

Requirements
------------

* [Symfony application requirements][1].
* [Docker Desktop][2]
* [Make][3]

Installation
------------

Clone this repository:

```console
https://github.com/abdounikarim/poc-symfony
```

Go on the project root folder:

```console
cd poc-symfony/
```

Usage
-----

Run the project in dev environment:

```console
make install
```

Then access the application in your browser at the given URL (<https://localhost> by default).

Check the app environment:

```console
make env
```

Run the project in prod environment:

```console
make install-prod
```

If you have some trouble, you can check the logs:

```console
make logs
```

If you have some issues with Docker cache:

```console
make reset
```

Tests
-----

Execute this command to run tests:

```console
make tests
```

[1]: https://symfony.com/doc/current/setup.html#technical-requirements
[2]: https://www.docker.com/products/docker-desktop/
[3]: https://www.gnu.org/software/make/#download
