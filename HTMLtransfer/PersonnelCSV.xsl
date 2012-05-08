<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2002/XMLSchema">
<xsl:output method="text" encoding="UTF-8"/>
<xsl:template match="/">
<xsl:for-each select="Personnel">
<xsl:for-each select="Employee">
<xsl:for-each select="@name">
<xsl:value-of select="." />
</xsl:for-each>
<xsl:for-each select="@title">
<xsl:value-of select="." />
</xsl:for-each>
<xsl:for-each select="@companyYears">
<xsl:value-of select="." />
</xsl:for-each>
<xsl:text> &#xd;&#xa;</xsl:text>
</xsl:for-each>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>