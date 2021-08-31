#!/bin/bash
########################################################################
# Generate github markdown pages from confluence export
########################################################################

echo "Removing items from last run"
rm -rf out

echo "Creating output directories"
mkdir -pv out/page-xml
mkdir -pv out/wiki
mkdir -pv out/images

echo "Generating first-version page xmls and image mapping"
xsltproc entities-version-1.xsl entities.xml
echo ""

echo "Generating latest-version page xmls and image mapping"
xsltproc entities-version-latest.xsl entities.xml
echo ""

echo "The Confluence table tag will be converted for these pages. Check them in the wiki. Line breaks will break a table in the wiki."
grep -rln '<table>' out/page-xml
echo ""

echo "The Confluence code tag will be converted for these pages. Check in the wiki."
grep -rln '<code>' out/page-xml
echo ""

echo "Some images are lost in both Confluence and the GH wiki. Compare image URLs between source and target for these pages."
grep -rln '<ac:image' out/page-xml
echo ""

echo "The Confluence Children Display macro cannot be converted for these pages."
grep -rln 'ac:name="children"' out/page-xml
echo ""

echo "The Confluence Info macro cannot be converted for these pages."
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

