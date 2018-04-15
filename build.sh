#!/bin/bash
./configure --prefix=/usr
make -j $SHED_NUM_JOBS
make DESTDIR=${SHED_FAKE_ROOT} install
mkdir -v ${SHED_FAKE_ROOT}/bin
mv -v ${SHED_FAKE_ROOT}/usr/bin/fuser   ${SHED_FAKE_ROOT}/bin
mv -v ${SHED_FAKE_ROOT}/usr/bin/killall ${SHED_FAKE_ROOT}/bin
