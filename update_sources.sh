#!/bin/bash

QUARTUS_SOURCE_FILE=$(ls *.qsf)
SRC_FILES=$(ls hdl/*.vhd)

sed -i '/VHDL_FILE/d' "$QUARTUS_SOURCE_FILE"

for file in $SRC_FILES; do
        echo "set_global_assignment -name VHDL_FILE $file" >> $QUARTUS_SOURCE_FILE
done

echo "HDL SOURCES CONFIGURATION UPDATED!"