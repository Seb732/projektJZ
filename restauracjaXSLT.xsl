<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/menu_restauracji">
    <html>
      <body>
        <h1><center>Menu</center></h1>
        <br></br>
          <h2><center>Przystawki</center></h2>
            <xsl:for-each select="//przystawki/danie">
              <h3><center><xsl:value-of select="nazwa" /></center></h3>
                <table align="center">
                  <tr>
                    <th text-align="center">Typ</th>
                    <th text-align="center">Cena</th>
                    <th text-align="center">Na wagę</th>
                  </tr>
                  <tr>
                    <td><h4><xsl:value-of select="@typ" /></h4></td>
                    <td><h4><xsl:value-of select="@cena" /></h4></td>
                    <td><h4><xsl:value-of select="@na_wagę" /></h4></td>
                  </tr>
                </table>
                <table align ="center">
                  <tr>
                    <th text-align="center">Składniki</th>
                  </tr>
                  <tr>
                    <td><h5><center>
                    <xsl:for-each select="skladniki/skladnik">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="text()" />
                    <xsl:text> </xsl:text>
                    </xsl:for-each>
                    </center></h5> </td>
                  </tr>
                </table>
            </xsl:for-each>
            <h2><center>Dania główne</center></h2>
              <xsl:for-each select="//dania_główne/danie">
              <h3><center><xsl:value-of select="nazwa" /></center></h3>
                <table align="center">
                  <tr>
                    <th text-align="center">Typ</th>
                    <th text-align="center">Cena</th>
                    <th text-align="center">Na wagę</th>
                  </tr>
                  <tr>
                    <td><h4><xsl:value-of select="@typ" /></h4></td>
                    <td><h4><xsl:value-of select="@cena" /></h4></td>
                    <td><h4><xsl:value-of select="@na_wagę" /></h4></td>
                  </tr>
                </table>
                <table align ="center">
                  <tr>
                    <th text-align="center">Składniki</th>
                  </tr>
                  <tr>
                    <td><h5><center>
                    <xsl:for-each select="skladniki/skladnik">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="text()" />
                    <xsl:text> </xsl:text>
                    </xsl:for-each>
                    </center></h5> </td>
                  </tr>
                </table>
            </xsl:for-each>
            <h2><center>Zupy</center></h2>
            <xsl:for-each select="//zupy/danie">
              <h3><center><xsl:value-of select="nazwa" /></center></h3>
                <table align="center">
                  <tr>
                    <th text-align="center">Cena</th>
                  </tr>
                  <tr>
                    <td><h4><xsl:value-of select="@cena" /></h4></td>
                  </tr>
                </table>
                <table align ="center">
                  <tr>
                    <th text-align="center">Składniki</th>
                  </tr>
                  <tr>
                    <td><h5><center>
                    <xsl:for-each select="skladniki/skladnik">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="text()" />
                    <xsl:text> </xsl:text>
                    </xsl:for-each>
                    </center></h5> </td>
                  </tr>
                </table>
            </xsl:for-each>
            <h2><center>Desery</center></h2>
            <xsl:for-each select="//desery/danie">
              <h3><center><xsl:value-of select="nazwa" /></center></h3>
                <table align="center">
                  <tr>
                    <th text-align="center">Cena</th>
                  </tr>
                  <tr>
                    <td><h4><xsl:value-of select="@cena" /></h4></td>
                  </tr>
                </table>
                <table align ="center">
                  <tr>
                    <th text-align="center">Składniki</th>
                  </tr>
                  <tr>
                    <td><h5><center>
                    <xsl:for-each select="skladniki/skladnik">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="text()" />
                    <xsl:text> </xsl:text>
                    </xsl:for-each>
                    </center></h5> </td>
                  </tr>
                </table>
            </xsl:for-each>
            <h2><center>Dodatki</center></h2>
              <xsl:for-each select="//dodatki/dodatek">
                  <h3><center><xsl:value-of select="text()" /></center></h3>
                  <table align="center">
                  <tr>
                    <th text-align="center">Cena</th>
                  </tr>
                  <tr>
                    <td><h4><xsl:value-of select="@cena" /></h4></td>
                  </tr>
                </table>
              </xsl:for-each>
              <h2><center>Napoje</center></h2>
              <xsl:for-each select="//napoje/napój">
                  <h3><center><xsl:value-of select="text()" /></center></h3>
                  <table align="center">
                  <tr>
                    <th text-align="center">Cena</th>
                  </tr>
                  <tr>
                    <td><h4><xsl:value-of select="@cena" /></h4></td>
                  </tr>
                </table>
              </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
