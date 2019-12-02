#!/bin/sh
VARNISH_BIN=/usr/sbin/varnishd
VARNISH_VCL=/etc/varnish/default.vcl
VARNISH_FLAGS="-F"

if [ -f ${VARNISH_VCL} ]; then
  echo "Starting Varnish..."
  ${VARNISH_BIN} ${VARNISH_FLAGS} -f ${VARNISH_VCL}
fi
