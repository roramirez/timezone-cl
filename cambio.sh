#!/bin/bash
YEAR=$(date +"%Y")
echo "Zona America/Santiago, antes del Cambio"
zdump -v America/Santiago |grep $YEAR
echo "Realizando Cambio a la zona"
zic southamerica
echo "Zona America/Santiago, luego del Cambio"
zdump -v America/Santiago |grep $YEAR
echo ""
echo "Zona Chile/Continental, antes del Cambio"
zdump -v Chile/Continental |grep $YEAR
echo "Realizando Cambio a la zona"
zic backward
zdump -v Chile/Continental |grep $YEAR
dpkg-reconfigure tzdata

