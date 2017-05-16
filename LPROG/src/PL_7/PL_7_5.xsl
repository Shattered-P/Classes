<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : 2 de Maio de 2017, 17:12
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
                <title>newstylesheet.xsl</title>
            </head>
            <body>
                
                <xsl:value-of select="Catalogo/Planta[2]/NomeComum"/><br/>

                <xsl:value-of select="count(Catalogo/Planta)"/><br/>

                <xsl:value-of select="Catalogo/Planta[last()]/Preco"/><br/>

                <xsl:value-of select="sum(Catalogo/Planta/Preco) div count(Catalogo/Planta)"/><br/>

                <xsl:value-of select="round(sum(Catalogo/Planta/Preco) div count(Catalogo/Planta) * 100) div 100"/><br/>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
