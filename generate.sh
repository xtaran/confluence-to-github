#!/bin/bash
########################################################################
# Generate github markdown pages from confluence export
########################################################################

echo "Removing items from last run"
rm -rf out

echo "Creating output directories"
mkdir -pv out/page-xml
mkdir -pv out/wiki/images

echo "Generating page xmls and image mapping"
xsltproc entities.xsl entities.xml
echo ""

echo "The Confluence Children Display macro cannot be converted for these pages:"
grep -rln 'ac:name="children"' out/page-xml
echo ""

echo "The Confluence Info macro cannot be converted for these pages:"
grep -rln 'ac:name="info"' out/page-xml
echo ""

echo "Copying images from attachments"
xsltproc image-mappings.xsl out/image-mappings.xml | bash
echo ""

echo "Convert page xmls to github markdown"
for PAGE_PATH in out/page-xml/*.xml; do 
   PAGE_XML=${PAGE_PATH##out/page-xml/}
   PAGE_MD=${PAGE_XML%%.xml}.md
   xsltproc page.xsl "${PAGE_PATH}" > "out/wiki/${PAGE_MD}"
done

echo "Content generated to out/wiki"

