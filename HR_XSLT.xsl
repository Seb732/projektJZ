<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/kadry">
    <html>
      <body>
        <h1><center>Kadry</center></h1>
        <xsl:for-each select="pracownik">    
          <h3><center><xsl:value-of select="@id" /></center></h3>
          <br></br>
          <table align="left" border="1">
            <thead>
              <tr>
                <th style="text-align:left">Imie</th>
                <th style="text-align:left">Nazwisko</th>
                <th style="text-align:left">Drugie imie</th>
                <th style="text-align:left">Dane urodzenia</th>
                <th style="text-align:left">Pesel</th>
                <th style="text-align:left">Dzieci</th>
                <th style="text-align:left">Dane kontaktowe</th>
                <th style="text-align:left">Wyksztalcenie</th>
                <th style="text-align:left">Jezyki</th>
                <th style="text-align:left">Zatrudnienie</th>
                <th style="text-align:left">Zainteresowania</th>
              </tr>
            </thead>
            <tr>
              <td><xsl:value-of select="dane_podstawowe/imie"/></td>
              <td><xsl:value-of select="dane_podstawowe/nazwisko"/></td>
              <td><xsl:value-of select="dane_podstawowe/drugieimie"/></td>
              <td>
                <xsl:text> ur. </xsl:text>
                <xsl:value-of select="dane_podstawowe/daneUrodzenia/@data"/>
                <br></br>
                <xsl:text> w </xsl:text>
                <br></br>
                <xsl:value-of select="dane_podstawowe/daneUrodzenia/@miejscowosc"/>
              </td>
              <td><xsl:value-of select="dane_podstawowe/pesel"/></td>
              <td>
                <xsl:for-each select="dane_podstawowe/dzieci/dziecko">
                  <xsl:text>        </xsl:text>
                  <xsl:value-of select="imie"/>
                  <xsl:text> ur. </xsl:text>
                  <xsl:value-of select="daneUrodzenia/@data"/>
                  <xsl:text> w </xsl:text>
                  <xsl:value-of select="daneUrodzenia/@miejscowosc"/>
                  <br></br>
                </xsl:for-each>
              </td>
              <td>
                <xsl:value-of select="dane_kontaktowe/kod_pocztowy"/>
                <xsl:text>        </xsl:text>
                <xsl:value-of select="dane_kontaktowe/miasto"/>
                <br></br>
                <xsl:value-of select="dane_kontaktowe/ulica"/>
                <xsl:text>        </xsl:text>
                <xsl:value-of select="dane_kontaktowe/nrBudynku"/>
                <xsl:text>/</xsl:text>
                <xsl:value-of select="dane_kontaktowe/nrLokalu"/>
                <br></br>
                <xsl:value-of select="dane_kontaktowe/nrTelefonu"/>
                <br></br>
                <xsl:value-of select="dane_kontaktowe/email"/>
              </td>
              <td>
                <xsl:for-each select="wyksztalcenie/uczelnia">
                  <xsl:value-of select="nazwa_uczelni"/>
                  <br></br>
                  <xsl:value-of select="wydzial"/>
                  <br></br>
                  <xsl:value-of select="kierunek"/>
                  <br></br>
                  <xsl:value-of select="poziom"/>
                  <br></br>
                  <xsl:value-of select="rok_ukonczenia"/>
                  <br></br>
                  <br></br>
                </xsl:for-each>
              </td>
              <td>
                <xsl:for-each select="jezyki/jezyk">
                  <xsl:value-of select="@nazwa_jezyka"/>
                  <br></br>
                  <xsl:text> na poziomie </xsl:text>
                  <br></br>
                  <xsl:value-of select="@poziom"/>
                  <br></br>
                  <br></br>
                </xsl:for-each>
              </td>
              <td>
                <xsl:for-each select="zatrudnienie/firma">
                  <xsl:value-of select="nazwa_firmy"/>
                  <br></br>
                  <xsl:value-of select="stanowisko"/>
                  <br></br>
                  <xsl:text>od </xsl:text>
                  <xsl:value-of select="data_zatrudnienia"/>
                  <br></br>
                  <xsl:text>do </xsl:text>
                  <xsl:value-of select="data_odejscia"/>
                  <br></br>
                  <br></br>
                </xsl:for-each>
              </td>
              <td>
                <xsl:for-each select="zainteresowania/zainteresowanie">
                  <xsl:value-of select="@nazwa_zainteresowania"/>
                  <br></br>
                </xsl:for-each>
              </td>
            </tr>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
