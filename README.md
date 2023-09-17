<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/Labs64/laravel-boilerplate"><img src="https://travis-ci.org/Labs64/laravel-boilerplate.svg" alt="Build Status"></a>
<a href="https://laravel.com"><img src="https://img.shields.io/badge/Laravel-v8-f05340.svg" alt="Laravel Version"></a>
<a href="https://github.com/Labs64/laravel-boilerplate/blob/master/composer.json"><img src="https://img.shields.io/badge/php-%3E%3D%207.2.5-8892BF.svg" alt="PHP Badge"></a>
<a href="https://packagist.org/packages/labs64/laravel-boilerplate"><img src="https://poser.pugx.org/labs64/laravel-boilerplate/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/labs64/laravel-boilerplate"><img src="https://poser.pugx.org/labs64/laravel-boilerplate/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/labs64/laravel-boilerplate"><img src="https://poser.pugx.org/labs64/laravel-boilerplate/license.svg" alt="License"></a>
</p>

# Laravel Boilerplate Project

Learning how to use laravel boilerplate. This is part of Maxy Academy course that I'm learning right now.

## Features
- Administration Dashboard with [Gentelella Admin Theme](https://github.com/puikinsh/gentelella)
- Responsive Layout
- Bootstrap 3
- Font Awesome
- Socialite Integration
- [Invisible reCAPTCHA](https://github.com/albertcht/invisible-recaptcha)
- **Membership plans and Access control management** by [NetLicensing](https://netlicensing.io/?utm_source=Laravel_Boilerplate&utm_medium=github&utm_campaign=laravel_boilerplate&utm_content=readme) :thumbsup:
- MySQL, SQLite, PostgreSQL databases support
- AWS S3 support
- Google Analytics support in frontend
    - Configuration can be easily made via ```analytics.php``` and template ```ga.blade.php```
- Automatic errors feedback via eMail
- i18n support and automatic user client language recognition
- Helper class ```ToJs``` to ease work with JavaScript variables using blade directive ```@tojs```
- Helper class ```Meta``` blade directive ```@meta``` to ease work with meta tags & properties
- Models for Users and Roles
- Added Auth controller to allow registration activation by email
- **Guided Tour** by [GuideChimp](https://www.labs64.com/guidechimp/) :thumbsup:
- Extended Auth configuration by:
    - Ability to switch on/off user registration
    - Set up default user role
    - Ability to switch on/off registration activation email
    - Captcha configuration
- Gravatar support in User model and flexible configuration via ```gravatar.php```
- Added library log viewer to allow printing errors in a log file ```laravel.log```
- Added library sortable for tables sorting
- i18n: ```trans()``` method replaced by ```__()``` in order to support internationalization via JSON resources
- Registration using social services (Google+, Facebook, Twitter)
- Storing last social login in user session
- Added event on SocialLogin
- Added listeners on some events; e.g. Login, Logout, Registration, SocialLogin
- Added notification ```ConfirmEmail``` on user account confirmation
- Added policies to access backend services
- Added database seeders for Users, Roles, and UserRoles
- Improved migration ```create_users_table.php```; fields added active, confirm and deleted_at for soft deletion
- JavaScript / CSS minification
- JavaScript / CSS hashing
- Some very useful helper functions to ease your live :)

## System Requirements
To be able to run Laravel Boilerplate you have to meet the following requirements:
- PHP >= 7.4
- PHP Extensions: BCMath, Ctype, Fileinfo, JSON, Mbstring, OpenSSL, PDO, Tokenizer, XML, cURL, Mcrypt, GD
- Node.js >= 8.x
- Composer >= 1.9.x

## Installation
1. Install Composer using detailed installation instructions [here](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx)
```
$ wget https://getcomposer.org/composer.phar
$ chmod +x composer.phar
$ mv composer.phar /usr/local/bin/composer
```
2. Install Node.js using detailed installation instructions [here](https://nodejs.org/en/download/package-manager/)
```
$ yum install npm
```
3. Clone repository
```
$ git clone https://github.com/Labs64/laravel-boilerplate.git
```
4. Change into the working directory
```
$ cd laravel-boilerplate
```
5. Copy `.env.example` to `.env` and modify according to your environment
```
$ cp .env.example .env
```
6. Install composer dependencies
```
$ composer install --prefer-dist
```
7. An application key can be generated with the command
```
$ php artisan key:generate
```
8. Execute following commands to install other dependencies
```
$ npm install
$ npm run dev
```
9. Run these commands to create the tables within the defined database and populate seed data
```
$ php artisan migrate --seed
```

## Troubleshooting

- If you get an error like a `PDOException` try editing your `.env` file and change `DB_HOST=127.0.0.1` to `DB_HOST=localhost` or `DB_HOST=mysql` (for *docker-compose* environment).

- If you get a password error try this command:
```
# ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
```

## Run

To start the PHP built-in server
```
$ php artisan serve --port=8080
or
$ php -S localhost:8080 -t public/
```

Now you can browse the site at [http://localhost:8080](http://localhost:8080)  🙌

## License

This boilerplate is open-source software licensed under the [MIT license](LICENSE).
