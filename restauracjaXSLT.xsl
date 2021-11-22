<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/menu_restauracji">
    <html>
      <body>
        <h1><center>Menu</center></h1>
        <br></br>
          <h2><center>Przystawki</center></h2>
            <xsl:for-each select="//przystawki">
              <h3><center><xsl:value-of select="danie/nazwa" /></center></h3>
                <table align="center">
                  <tr>
                    <th text-align="center">Typ</th>
                    <th text-align="center">Cena</th>
                    <th text-align="center">Na wagę</th>
                  </tr>
                  <tr>
                    <td><h4><xsl:value-of select="danie/@typ" /></h4></td>
                    <td><h4><xsl:value-of select="danie/@cena" /></h4></td>
                    <td><h4><xsl:value-of select="danie/@na_wagę" /></h4></td>
                  </tr>
                </table>
                <table align ="center">
                  <tr>
                    <th text-align="center">Składniki</th>
                  </tr>
                  <tr>
                    <td><h5><center><xsl:value-of select="danie/skladniki/skladnik" /></center></h5> </td>
                  </tr>
                </table>
            </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
