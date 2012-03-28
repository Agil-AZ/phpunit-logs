<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match='/'>
  <html> 
     <head><title>Informe JUNIT</title></head>
     <body>
        <h1>JUNIT</h1>
	  <table border="1">
	    <tr bgcolor="#9acd32">
	      <th>Name</th>
	      <th>File</th>
	    </tr>
	    <xsl:for-each select="testsuites/testsuite/testsuite">
	      <xsl:sort select="artist"/>
	      <tr>
		<td><xsl:value-of select="@name"/></td>
		<td><xsl:value-of select="@file"/></td>
	      </tr>
	    </xsl:for-each>
	  </table>
      </body>
   </html>
</xsl:template>
</xsl:stylesheet>
