dnl $Id$
dnl config.m4 for extension pharbuild

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(pharbuild, for pharbuild support,
dnl Make sure that the comment is aligned:
dnl [  --with-pharbuild             Include pharbuild support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(pharbuild, whether to enable pharbuild support,
dnl Make sure that the comment is aligned:
dnl [  --enable-pharbuild           Enable pharbuild support])

if test "$PHP_PHARBUILD" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-pharbuild -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/pharbuild.h"  # you most likely want to change this
  dnl if test -r $PHP_PHARBUILD/$SEARCH_FOR; then # path given as parameter
  dnl   PHARBUILD_DIR=$PHP_PHARBUILD
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for pharbuild files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       PHARBUILD_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$PHARBUILD_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the pharbuild distribution])
  dnl fi

  dnl # --with-pharbuild -> add include path
  dnl PHP_ADD_INCLUDE($PHARBUILD_DIR/include)

  dnl # --with-pharbuild -> check for lib and symbol presence
  dnl LIBNAME=pharbuild # you may want to change this
  dnl LIBSYMBOL=pharbuild # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $PHARBUILD_DIR/$PHP_LIBDIR, PHARBUILD_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_PHARBUILDLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong pharbuild lib version or lib not found])
  dnl ],[
  dnl   -L$PHARBUILD_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(PHARBUILD_SHARED_LIBADD)

  PHP_NEW_EXTENSION(pharbuild, pharbuild.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
