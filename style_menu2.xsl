<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/menu_restauracji">
    <html>
      <body bgcolor="#ffe6b3">
        <h1 style="margin-bottom: 50;font-size: 70;font-style: italic;color: gold"><center>Menu</center></h1>
          <xsl:for-each select="//kategoria">
            <h2 style="margin-bottom: 30;margin-top:50;font-size: 40;font-style: italic"><center><xsl:value-of select="@nazwa"/></center></h2>
            <xsl:for-each select="danie">
              <h3 style="margin-bottom: 0;font-size: 25"><center><xsl:value-of select="nazwa" /><t1>&#160;&#160;</t1><xsl:value-of select="@cena"/><t2>&#160;</t2><th>zł</th></center></h3>
                <h4 style="margin-top: 0; font-size:15; color: grey;font-weight:normal"><center>
                    <xsl:for-each select="skladniki/skladnik">
                    <xsl:if test="position() != last()" >                    
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="text()" />
                     <xsl:text>, </xsl:text>
                     </xsl:if>
                    <xsl:if test="position() = last()" >
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="text()" />
                    </xsl:if>
                    </xsl:for-each>
                    </center></h4>
             </xsl:for-each>
            </xsl:for-each>
       <h2 style="margin-bottom: 30;margin-top:50;font-size: 40;font-style: italic"><center>Dodatki</center></h2>
              <xsl:for-each select="//dodatki/dodatek">
                  <h3  style="margin-bottom: 0;font-size: 25"><center><xsl:value-of select="text()" /><t1>&#160;&#160;</t1><xsl:value-of select="@cena"/><t2>&#160;</t2><th>zł</th></center></h3>
              </xsl:for-each>
              <h2 style="margin-bottom: 30;margin-top:50;font-size: 40;font-style: italic"><center>Napoje</center></h2>
              <xsl:for-each select="//napoje/napój">
                  <h3  style="margin-bottom: 0;font-size: 25"><center><xsl:value-of select="text()" /><t1>&#160;&#160;</t1><xsl:value-of select="@cena"/><t2>&#160;</t2><th>zł</th></center></h3>
              </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>