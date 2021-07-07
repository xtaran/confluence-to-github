#!/usr/bin/env bash

# Find them all at 
#	https://www.ou.edu/research/electron/internet/special.shtml
#	https://www.w3.org/wiki/Common_HTML_entities_used_for_typography

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
sed -i .org 's/&copy;/©/g' entities.xml

sed -i .org 's/&acirc;/â/g' entities.xml
sed -i .org 's/&agrave;/à/g' entities.xml
sed -i .org 's/&iuml;/ï/g' entities.xml
sed -i .org 's/&eacute;/é/g' entities.xml

sed -i .org 's/&shy;//g' entities.xml
sed -i .org 's/&trade;/™/g' entities.xml
sed -i .org 's/&rdquo;/"/g' entities.xml
sed -i .org 's/&ldquo;/"/g' entities.xml
sed -i .org 's/&mdash;/—/g' entities.xml
sed -i .org 's/&nbsp;/ /g' entities.xml
sed -i .org 's/&euro;/€/g' entities.xml
sed -i .org "s/&rsquo;/'/g" entities.xml
sed -i .org "s/&lsquo;/'/g" entities.xml
sed -i .org 's/&bull;/•/g' entities.xml

sed -i .org 's/&lrm;/[ltr]/g' entities.xml
sed -i .org 's/&rlm;/[rtl]/g' entities.xml
sed -i .org 's/&ndash;/–/g' entities.xml
sed -i .org 's/&hellip;/.../g' entities.xml

