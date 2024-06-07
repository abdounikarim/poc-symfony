Hello from Symfony!👋
========================

The "Hello from Symfony!👋" application is just a starter to show a minimalist symfony app.

Requirements
------------

* PHP 8.2.0 or higher;
* PDO-SQLite PHP extension enabled;
* and the [usual Symfony application requirements][1].

Installation
------------

Clone this repository:

```console
https://github.com/abdounikarim/poc-symfony-hello
```

Go on the project root folder:

```console
cd poc-symfony-hello/
```

Install PHP dependencies:

```console
composer install
```

Usage
-----

There's no need to configure anything before running the application. There are
2 different ways of running this application depending on your needs:

**Option 1.** [Download Symfony CLI][2] and run this command:

```bash
symfony serve
```

Then access the application in your browser at the given URL (<https://localhost:8000> by default).

**Option 2.** Use the built-in PHP web server:

```bash
php -S localhost:8000 -t public/
```

Tests
-----

Execute this command to run tests:

```bash
./bin/phpunit
```

[1]: https://symfony.com/doc/current/setup.html#technical-requirements
[2]: https://symfony.com/download
