<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="../../css/reset.css" type="text/css" />
        <link rel="stylesheet" href="../../css/junit.css" type="text/css" />
      </head>
      <body>
        <table id="alltests">
        <xsl:for-each select="testsuites/testsuite">
          <h1>&#160;JUnit:&#160;&#160;</h1>
          <h3>tests:&#160;</h3><h4><xsl:value-of select="@tests"/>&#160;&#160;</h4>
          <h3>assertions:&#160;</h3><h4><xsl:value-of select="@assertions"/>&#160;&#160;</h4>
          <h3>failures:&#160;</h3><h4><xsl:value-of select="@failures"/>&#160;&#160;</h4>
          <h3>errors:&#160;</h3><h4><xsl:value-of select="@errors"/>&#160;&#160;</h4>
          <h3>time:&#160;</h3><h4><xsl:value-of select="@time"/>&#160;&#160;</h4>
          <xsl:for-each select="testsuite">
            <xsl:variable name="alltests-class">
              <xsl:choose>
                <xsl:when test="@failures='0' and @errors='0'">nofail</xsl:when>
                <xsl:otherwise>fail</xsl:otherwise>
              </xsl:choose>
            </xsl:variable>
            <tr class="{$alltests-class}">
              <td>
                <h2>&#160;<xsl:value-of select="@name"/>:&#160;&#160;</h2>
                <p>tests:&#160;</p><h4><xsl:value-of select="@tests"/>&#160;&#160;</h4>
                <p>assertions:&#160;</p><h4><xsl:value-of select="@assertions"/>&#160;&#160;</h4>
                <p>failures:&#160;</p><h4><xsl:value-of select="@failures"/>&#160;&#160;</h4>
                <p>errors:&#160;</p><h4><xsl:value-of select="@errors"/>&#160;&#160;</h4>
                <p>time:&#160;</p><h4><xsl:value-of select="@time"/>&#160;&#160;</h4>
              </td>
            </tr>
            <tr>
              <td>
                <table id="typetests">
                <xsl:for-each select="testsuite">
                  <xsl:variable name="typetests-class">
                    <xsl:choose>
                      <xsl:when test="@failures='0' and @errors='0'">nofail</xsl:when>
                      <xsl:otherwise>fail</xsl:otherwise>
                    </xsl:choose>
                  </xsl:variable>
                  <tr class="{$typetests-class}">
                    <td>
                      <h3>&#160;<xsl:value-of select="@name"/>:&#160;&#160;</h3>
                      <p>tests:&#160;</p><h5><xsl:value-of select="@tests"/>&#160;&#160;</h5>
                      <p>assertions:&#160;</p><h5><xsl:value-of select="@assertions"/>&#160;&#160;</h5>
                      <p>failures:&#160;</p><h5><xsl:value-of select="@failures"/>&#160;&#160;</h5>
                      <p>errors:&#160;</p><h5><xsl:value-of select="@errors"/>&#160;&#160;</h5>
                      <p>time:&#160;</p><h5><xsl:value-of select="@time"/>&#160;&#160;</h5>
                      <p>file:&#160;</p><h5><xsl:value-of select="@file"/>&#160;&#160;</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <table id="tests">
                      <xsl:for-each select="testcase">
                        <xsl:variable name="tests-class">
                          <xsl:choose>
                            <xsl:when test="failure or error">nofail</xsl:when>
                            <xsl:otherwise>fail</xsl:otherwise>
                          </xsl:choose>
                        </xsl:variable>
                        <tr class="{$tests-class}">
                          <td>
                            <h3>&#160;<xsl:value-of select="@name"/>:&#160;&#160;</h3>
                            <p>line:&#160;</p><h5><xsl:value-of select="@line"/>&#160;&#160;</h5>
                            <p>assertions:&#160;</p><h5><xsl:value-of select="@assertions"/>&#160;&#160;</h5>
                            <p>time:&#160;</p><h5><xsl:value-of select="@time"/>&#160;&#160;</h5>
                            <br></br>
                            <div class="comment">
                              <xsl:if test="failure"> 
                                <pre><xsl:value-of select="failure"/></pre>
                              </xsl:if>
                              <xsl:if test="error"> 
                                <pre><xsl:value-of select="error"/></pre>
                              </xsl:if>
                            </div>
                          </td>
                        </tr>
                      </xsl:for-each>
                      </table>
                    </td>
                  </tr>
                </xsl:for-each>
                </table>
              </td>
            </tr>
          </xsl:for-each>
        </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>