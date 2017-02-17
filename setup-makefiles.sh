#!/bin/sh

set -e

export VENDOR=samsung
export DEVICE=tbltetmo
./../../$VENDOR/tblte-common/setup-makefiles.sh $@
