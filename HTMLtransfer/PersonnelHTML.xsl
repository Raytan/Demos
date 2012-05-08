<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
           xmlns:xs="http://www.w3.org/2001/XMLSchema">
<xsl:template match="/">
<html>
<head />
  <body title="Personnel">
     <xsl:for-each select="Personnel">
     <p>
     <xsl:for-each select="Employee">
     <xsl:if test="position( )=1">
          <table border="1">
          <thead>
          <tr>
                    <td>Employee Name</td>
                    <td>Employee Title</td>
                    <td>Years with Company</td>
          </tr>
       </thead>
       <tbody>
       <xsl:for-each select="../Employee">
           <tr>
           <td>
              <xsl:for-each select="@name">
              <xsl:value-of select="." />
              </xsl:for-each>
         </td>
         <td>
              <xsl:for-each select="@title">
              <xsl:value-of select="." />
              </xsl:for-each>
        </td>
        <td>
              <xsl:for-each select="@companyYears">
              <xsl:value-of select="." />
              </xsl:for-each>
        </td>
        </tr>
        </xsl:for-each>
      </tbody>
      </table>
      </xsl:if>
</xsl:for-each>
</p>
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet> 