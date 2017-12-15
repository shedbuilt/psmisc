#!/bin/bash
./configure --prefix=/usr
make -j $SHED_NUMJOBS
make DESTDIR=${SHED_FAKEROOT} install
mkdir -v ${SHED_FAKEROOT}/bin
mv -v ${SHED_FAKEROOT}/usr/bin/fuser   ${SHED_FAKEROOT}/bin
mv -v ${SHED_FAKEROOT}/usr/bin/killall ${SHED_FAKEROOT}/bin
