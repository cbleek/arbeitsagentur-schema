<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="kompmerkmal">
    <xsl:copy>
      <xsl:apply-templates select="@*|komp-parent|bezeichnung|kurs-codenr" />
      <xsl:apply-templates select="suchw">
        <xsl:sort select="text()" data-type="number"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="kompetenzen">
    <xsl:copy>
      <xsl:apply-templates select="kompmerkmal">
        <xsl:sort select="@id" data-type="number"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>