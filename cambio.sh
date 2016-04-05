#!/bin/bash

echo "Zona America/Santiago, antes del Cambio"
zdump -v America/Santiago |grep 2015
echo "Realizando Cambio a la zona"
zic southamerica
echo "Zona America/Santiago, luego del Cambio"
zdump -v America/Santiago |grep 2015
echo ""
echo "Zona Chile/Continental, antes del Cambio"
zdump -v Chile/Continental |grep 2015
echo "Realizando Cambio a la zona"
zic backward
zdump -v Chile/Continental |grep 2015
dpkg-reconfigure tzdata

