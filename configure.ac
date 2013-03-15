dnl Process this file with autoconf to produce a configure script.

AC_INIT([gstfs], [0.2])
AC_CONFIG_SRCDIR([gstfs.c])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])

AM_SILENT_RULES([yes])

AC_ISC_POSIX
AC_PROG_CC
AM_PROG_CC_STDC
AC_HEADER_STDC

PKG_CHECK_MODULES([gstfs], [glib-2.0 gstreamer-1.0 fuse])
AC_DEFINE(FUSE_USE_VERSION,26,[Fuse API Version])

AC_OUTPUT(Makefile)
