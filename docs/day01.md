# day01

## 使用git拉取php源代码
```
# 使用php官方git仓库地址
git clone https://git.php.net/repository/php-src.git
# 或者使用github的镜像git地址 
git clone https://github.com/php/php-src.git
# checkout the last tag php-7.3.3
cd php-src 
git checkout php-7.3.3  
```

## 准备编译环境
我使用 Alpine Linux 3.9， 安装必要的编译工具
```
apk add gcc libc-dev make autoconf openssl openssl-dev bison libxml2 libxml2-dev
```

## 编译
```
cd php-src 
./buildconf
./configure --help # 查看可用参数

#我们仅编译一个最精简的PHP
./configure --disable-all
make

#执行
./sapi/cli/php -v
```

## 使用VIM + Ctags 阅读源码
```
#在PHP源码目录(假定为/server/php-src)执行:
$ cd /server/php-src
$ ctags -R
 
#小技巧：在当前目录生成的tags文件中使用的是相对路径，
#若改用 ctags -R /server/ ，可以生成包含完整路径的ctags，就可以随意放到任意文件夹中了。 
 
#在~/.vimrc中添加:
set tags+=/server/php-src/tags
#或者在vim中运行命令:
:set tags+=/server/php-src/tags
```
使用 `Ctrl+]` 就可以自动跳转至定义，`Ctrl+t` 可以返回上一次查看位置。




