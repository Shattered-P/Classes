<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : PL_7_5_c.xsl
    Created on : 3 de Maio de 2017, 15:36
    Author     : Utilizador
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>PL_7_7.xsl</title>
            </head>
            <body>
                <xsl:template match="/GamesData">
                    <html>
                        <body>
                            <table border="1">
                                <xsl:for-each select="Game">
                                    <x  sl:sort select="GameTitle"/>
                                    <tr>
                                        <td>
                                            <xsl:value-of select="GameTitle"></xsl:value-of>
                                        </td>
                                        <xsl:apply-template match="Platform"/>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </body>
                    </html>
                </xsl:template>
                <xsl:template select="Platform">
                    <td>
                        <xsl:value-of select="@Name - @Rating"></xsl:value-of>
                    </td>
                </xsl:template>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
