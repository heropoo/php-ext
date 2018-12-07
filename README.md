# php-ext
php-ext

> php-version: 7.2.13

1. download php-7.2.13 source code
```sh
wget http://am1.php.net/distributions/php-7.2.13.tar.gz
tar zxvf php-7.2.13.tar.gz
``` 

2. create a extension
```
cd php-7.2.13/ext/
./ext_skel --extname=hello_world
```
output
```
Creating directory hello_world
Creating basic files: config.m4 config.w32 .gitignore hello_world.c php_hello_world.h CREDITS EXPERIMENTAL tests/001.phpt hello_world.php [done].

To use your new extension, you will have to execute the following steps:

1.  $ cd ..
2.  $ vi ext/hello_world/config.m4
3.  $ ./buildconf
4.  $ ./configure --[with|enable]-hello_world
5.  $ make
6.  $ ./sapi/cli/php -f ext/hello_world/hello_world.php
7.  $ vi ext/hello_world/hello_world.c
8.  $ make

Repeat steps 3-6 until you are satisfied with ext/hello_world/config.m4 and
step 6 confirms that your module is compiled into PHP. Then, start writing
code and repeat the last two steps as often as necessary.
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

4. build
```
sudo apt install gcc autoconf libxml2-dev

./buildconf --force
make
```

