#!/bin/make
# @(#)Makefile	1.2 04 May 1995 02:06:57
#
# xargs0 - shell alias for xargs -0
#
# @(#) $Revision: 1.3 $
# @(#) $Id: Makefile,v 1.3 2014/09/22 01:33:09 root Exp $
# @(#) $Source: /usr/local/src/bin/xargs0/RCS/Makefile,v $
#
# Copyright (c) 2006 by Landon Curt Noll.  All Rights Reserved.
#
# Permission to use, copy, modify, and distribute this software and
# its documentation for any purpose and without fee is hereby granted,
# provided that the above copyright, this permission notice and text
# this comment, and the disclaimer below appear in all of the following:
#
#       supporting documentation
#       source copies
#       source works derived from this source
#       binaries derived from this source or from derived source
#
# LANDON CURT NOLL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
# INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO
# EVENT SHALL LANDON CURT NOLL BE LIABLE FOR ANY SPECIAL, INDIRECT OR
# CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
# USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.
#
# chongo (Landon Curt Noll, http://www.isthe.com/chongo/index.html) /\oo/\
#
# Share and enjoy! :-)


SHELL= /bin/sh
RM= rm
CP= cp
CHMOD= chmod

TOPNAME= bin
INSTALL= install

DESTDIR= /usr/local/bin

TARGETS= xargs0 find0

all: ${TARGETS}

xargs0: xargs0.sh
	${RM} -f $@
	${CP} -f $? $@
	${CHMOD} +x $@

find0: find0.sh
	${RM} -f $@
	${CP} -f $? $@
	${CHMOD} +x $@

configure:
	@echo nothing to configure

clean quick_clean quick_distclean distclean:

clobber quick_clobber: clean
	${RM} -f ${TARGETS}

install: all
	${INSTALL} -m 0555 ${TARGETS} ${DESTDIR}
