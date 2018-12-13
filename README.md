# php-ext
php-ext

Quick start in [docker](./README-Docker.md) 

> php-version: 7.2.13

1. download php-7.2.13 source code
```sh
wget http://am1.php.net/distributions/php-7.2.13.tar.gz
tar zxvf php-7.2.13.tar.gz
``` 

or git clone php-src
```
git clone https://git.php.net/repository/php-src.git
git checkout php-7.2.13 
```

2. create a extension
```
cd php-7.2.13/ext/
./ext_skel --extname=hello_world
```

3. edit `config.m4`

Dynamic compilation option
```
PHP_ARG_WITH(hello_world, for hello_world support,
dnf Make sure that the comment is aligned:
[  --with-hello_world             Include hello_world support])
```

Static compilation option
```
PHP_ARG_ENABLE(hello_world, whether to enable hello_world support,
dnf Make sure that the comment is aligned:
[  --enable-hello_world           Enable hello_world support])
```

Now we choose Static compilation option

4. build
```
 phpize
 ./configure
 make
 sudo make install
```

5. edit `php.ini`
```
extension=hello_world.so
```

## reference
* [Think In PHP Internals](http://www.php-internals.com/)
* https://www.bo56.com/php7%E6%89%A9%E5%B1%95%E5%BC%80%E5%8F%91%E4%B9%8B%E4%BC%A0%E5%8F%82%E4%B8%8E%E8%BF%94%E5%9B%9E%E5%80%BC/


