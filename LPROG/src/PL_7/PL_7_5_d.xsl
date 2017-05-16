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
                <title>PL_7_5_d.xsl</title>
            </head>
            <body>
                <table border="2">
                    <tr>
                        <th> </th>
                        <th>Nome</th>
                        <th>Preco</th>
                        <th>Disponibilidade</th>
                        <th>Luz</th>
                    </tr>
                    <xsl:for-each select="Catalogo/Planta">
                        <xsl:sort select="NomeComum"/>
                        <tr>
                            <td>
                                <xsl:value-of select="position()"/>
                            </td>
                            <td>
                                <xsl:value-of select="NomeComum"/>
                            </td>
                            <td>
                                <xsl:value-of select="Preco"/>
                            </td>
                            <td>
                                <xsl:value-of select="Disponibilidade"/>
                            </td>
                            <xsl:choose>
                            <xsl:when test="@NecessidadeLuz = 'Preferencialmente Sol'">
                                <td> 
                                    <img width="25" height="25" src="Imagem/partly_sunny.png" />
                                </td>
                            </xsl:when>
                            <xsl:when test="@NecessidadeLuz = 'Preferencialmente Sombra'">
                                <td> 
                                    <img width="25" height="25" src="Imagem/mostly_cloudy.png" />
                                </td>
                            </xsl:when>
                            <xsl:when test="@NecessidadeLuz = 'Sol ou Sombra'">
                                <td> 
                                    <img width="25" height="25" src="Imagem/sol.png" />
                                </td>
                            </xsl:when>
                            <xsl:when test="@NecessidadeLuz = 'Sombra'">
                                <td> 
                                    <img width="25" height="25" src="Imagem/cloudy.png" />
                                </td>
                            </xsl:when>
                            <xsl:when test="@NecessidadeLuz = 'Sol'">
                                <td> 
                                    <img width="25" height="25" src="Imagem/sol.png" />
                                </td>
                            </xsl:when>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
