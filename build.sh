#!/bin/bash
# Configure
./configure --prefix=/usr &&
# Build and Install
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install &&
# Rearrange
mkdir -v "${SHED_FAKE_ROOT}/bin" &&
mv -v "${SHED_FAKE_ROOT}/usr/bin/fuser"   "${SHED_FAKE_ROOT}/bin" &&
mv -v "${SHED_FAKE_ROOT}/usr/bin/killall" "${SHED_FAKE_ROOT}/bin"
