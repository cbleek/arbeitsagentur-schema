<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="berufeliste">
    <xsl:copy>
      <xsl:apply-templates select="beruf">
        <xsl:sort select="@id" data-type="number"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="beruf">
    <xsl:copy>
      <xsl:apply-templates select="@id|@bkz|typ|lbkgruppe|qualifikationsNiveaus|hochschulberuf|ebene|zustand|kuenstler|bezeichnung|suchname_nl"/>

      <xsl:apply-templates select="suchwort">
        <xsl:sort select="suchwort_normale_schreibweise" data-type="text"/>
      </xsl:apply-templates>

    </xsl:copy>
  </xsl:template>



</xsl:stylesheet>