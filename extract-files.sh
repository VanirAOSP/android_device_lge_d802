#!/bin/sh

set -e

<<<<<<< HEAD
BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$ `; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
=======
export VENDOR=lge
export DEVICE=d802
./../../$VENDOR/g2-common/extract-files.sh $@
>>>>>>> cm/cm-12.1
