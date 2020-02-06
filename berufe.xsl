<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="beruf">
    <xsl:copy>
      <xsl:apply-templates select="@*" />
      <xsl:apply-templates select="kompetenz">
        <xsl:sort select="@idref" data-type="number"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="berufe">
    <xsl:copy>
      <xsl:apply-templates select="beruf">
        <xsl:sort select="@id" data-type="number"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>