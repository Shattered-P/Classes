<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Exercise</title>
            </head>
            <body>
                <p>Viagens de OPO com custo inferior a 50€</p>
                <table border="1">
                    <tr>
                        <th>
                            <b>Destino</b>
                        </th>
                        <th>
                            <b>Duracao</b>
                        </th>
                        <th>
                            <b>Custo</b>
                        </th>
                    </tr>
                    <xsl:apply-templates select="agencia/viagens/viagem">
                        <xsl:sort select="duracao" order="descending"/>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
        </xsl:template>
        <xsl:template match="agencia/viagens/viagem">
            <xsl:choose>
                <xsl:when test="@origem = 'OPO' and custo &lt; 50.00">
                    <tr>
                        <td>
                            <xsl:value-of select="@destino"/>
                        </td>
                        <td>
                            <xsl:value-of select="duracao"/>
                        </td>
                        <td>
                            <xsl:value-of select="custo"/>
                        </td>
                    </tr>
                </xsl:when>
            </xsl:choose>
        
        </xsl:template>
        <!-- bloco A -->
    
</xsl:stylesheet>


