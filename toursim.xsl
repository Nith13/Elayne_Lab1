<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>Profiles</h2>
  <table border="1">
    <tr bgcolor="#0073e6">
      <th style="text-align:left"> User ID</th>
      <th style="text-align:left"> Name</th>
      <th style="text-align:left"> Gender</th>
      <th style="text-align:left"> Contact</th>
      <th style="text-align:left"> Email</th>
      <th style="text-align:left"> Address</th>
      <th style="text-align:left"> Interests</th>
    </tr>
    <xsl:for-each select="users/profile">
      <xsl:sort select ="name"/>
      <xsl:if test="contact &lt; 98865639">
      <tr>
        <xsl:choose>
          <xsl:when test="userid &gt; US101">
            <td bgcolor ="ff00ff">
            <xsl:value-of select="userid"/></td>
          </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="userid"/></td>
        </xsl:otherwise>
        </xsl:choose>
        
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="gender"/></td>
        <td><xsl:value-of select="contact"/></td>
        <td><xsl:value-of select="email"/></td>
        <td><xsl:value-of select="address"/></td>
        <td><xsl:value-of select="interests"/></td>
      </tr>
      </xsl:if>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>