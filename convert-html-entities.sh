#!/usr/bin/env bash

if [ ! -f entities.xml ]; then
	echo "entities.xml file not found. Please XML-Export Confluence space using Space-Tools and unpack, first."
	exit 1
fi


sed -i .org 's/&uuml;/ü/g' entities.xml
sed -i .org 's/&Uuml;/Ü/g' entities.xml
sed -i .org 's/&ouml;/ö/g' entities.xml
sed -i .org 's/&Ouml;/Ö/g' entities.xml
sed -i .org 's/&auml;/ä/g' entities.xml
sed -i .org 's/&Auml;/Ä/g' entities.xml
sed -i .org 's/&szlig;/ß/g' entities.xml
sed -i .org 's/&bdquo;/„/g' entities.xml
sed -i .org 's/&laquo;/«/g' entities.xml
sed -i .org 's/&raquo;/»/g' entities.xml
sed -i .org 's/&reg;/®/g' entities.xml
sed -i .org 's/&trade;/™/g' entities.xml
sed -i .org 's/&Aacute;/Á/g' entities.xml
sed -i .org 's/&sect;/§/g' entities.xml
sed -i .org 's/&deg;/°/g' entities.xml
sed -i .org 's/&prime;/′/g' entities.xml
sed -i .org 's/&para;/¶/g' entities.xml
sed -i .org 's/&Prime;/′/g' entities.xml