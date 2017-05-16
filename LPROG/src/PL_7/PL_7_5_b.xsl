<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : PL_7_5_b.xsl
    Created on : 3 de Maio de 2017, 14:42
    Author     : Utilizador
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
         <xsl:aplly-templates select="@* | node()"/>
    -->
    
    <xsl:template match="/">
        <Plantas>
            <xsl:attribute name="Quantidade">
                <xsl:value-of select="count(Catalogo/Planta)"/>
            </xsl:attribute>
            <xsl:apply-templates select="Catalogo/Planta"/>
        </Plantas>
    </xsl:template>
    
    <xsl:template match="Planta">
        <Planta>
             <xsl:attribute name="NomeCientifico">
                <xsl:value-of select="NomeBotanico"/>
            </xsl:attribute>
            <xsl:attribute name="Preco">
                <xsl:value-of select="Preco"/>
            </xsl:attribute>
            <xsl:element name="Nome">
                <xsl:value-of select="NomeComum"/>
            </xsl:element>
        </Planta>
    </xsl:template>

</xsl:stylesheet>
