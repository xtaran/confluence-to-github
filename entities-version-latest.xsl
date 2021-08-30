<?xml version="1.0" encoding="UTF-8"?>
<!--
Transform a Confluence XML format space export to multiple xml pages.
-->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                extension-element-prefixes="exsl">

  <xsl:output method="xml" standalone="yes" indent="yes"/>

  <xsl:include href="entity-templates.xsl" />

  <xsl:template match="/">
    <!-- 
      export will include old versions of current pages and pages that 
      have been deleted. We only want to select the most current version of each page that has been edited.
    -->
    <xsl:apply-templates select="/hibernate-generic/object[@class='Page' and boolean(collection[@name='historicalVersions'])]"/>

    <!-- 
      create a mapping document for attachments to wiki images

      attachments/$page-id/$attachment-id/$version - - > images/$space/$filename
      attachments/100434301/104595714/1            - - > images/services/intellij_idea_annotation_processors.gif
    -->
    <exsl:document href="{$output-path}image-mappings.xml" format="xml" standalone="yes" indent="yes">
      <images>
<!--        <xsl:apply-templates select="/hibernate-generic/object[@class='Page' and boolean(collection[@name='historicalVersions'])]/collection[@name = 'attachments']/element[@class = 'Attachment']/id[@name = 'id']" mode="image"/>-->
        <xsl:apply-templates select="/hibernate-generic/object[@class='Page']/collection[@name = 'attachments']/element[@class = 'Attachment']/id[@name = 'id']" mode="image"/>
      </images>
    </exsl:document>
  </xsl:template>

</xsl:stylesheet>
