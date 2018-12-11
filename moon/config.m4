dnl $Id$
dnl config.m4 for extension moon

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(moon, for moon support,
dnl Make sure that the comment is aligned:
dnl [  --with-moon             Include moon support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(moon, whether to enable moon support,
dnl Make sure that the comment is aligned:
[  --enable-moon           Enable moon support])

if test "$PHP_MOON" != "no"; then
  dnl Write more examples of tests here...

  dnl # get library FOO build options from pkg-config output
  dnl AC_PATH_PROG(PKG_CONFIG, pkg-config, no)
  dnl AC_MSG_CHECKING(for libfoo)
  dnl if test -x "$PKG_CONFIG" && $PKG_CONFIG --exists foo; then
  dnl   if $PKG_CONFIG foo --atleast-version 1.2.3; then
  dnl     LIBFOO_CFLAGS=`$PKG_CONFIG foo --cflags`
  dnl     LIBFOO_LIBDIR=`$PKG_CONFIG foo --libs`
  dnl     LIBFOO_VERSON=`$PKG_CONFIG foo --modversion`
  dnl     AC_MSG_RESULT(from pkgconfig: version $LIBFOO_VERSON)
  dnl   else
  dnl     AC_MSG_ERROR(system libfoo is too old: version 1.2.3 required)
  dnl   fi
  dnl else
  dnl   AC_MSG_ERROR(pkg-config not found)
  dnl fi
  dnl PHP_EVAL_LIBLINE($LIBFOO_LIBDIR, MOON_SHARED_LIBADD)
  dnl PHP_EVAL_INCLINE($LIBFOO_CFLAGS)

  dnl # --with-moon -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/moon.h"  # you most likely want to change this
  dnl if test -r $PHP_MOON/$SEARCH_FOR; then # path given as parameter
  dnl   MOON_DIR=$PHP_MOON
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for moon files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       MOON_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$MOON_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the moon distribution])
  dnl fi

  dnl # --with-moon -> add include path
  dnl PHP_ADD_INCLUDE($MOON_DIR/include)

  dnl # --with-moon -> check for lib and symbol presence
  dnl LIBNAME=moon # you may want to change this
  dnl LIBSYMBOL=moon # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $MOON_DIR/$PHP_LIBDIR, MOON_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_MOONLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong moon lib version or lib not found])
  dnl ],[
  dnl   -L$MOON_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(MOON_SHARED_LIBADD)

  PHP_NEW_EXTENSION(moon, moon.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
