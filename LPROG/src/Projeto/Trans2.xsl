<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : teste2_livraria.xsl
    Created on : 27 de Maio de 2017, 16:54
    Author     : MiguelLemos
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:c="bookstore">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>teste2_livraria.xsl</title>
            </head>
            <body bgcolor="#efefef"> 
                <table border="2" align="center" color="#000000">
                    <tr>                        
                        <th bgcolor= "#d1cfcf">Título</th>
                        <th bgcolor= "#d1cfcf">Autor</th>
                        <th bgcolor= "#d1cfcf">Preço</th>
                        <th bgcolor= "#d1cfcf">Capa</th>
                    </tr>                
                    <xsl:apply-templates select="c:Livraria/c:Secção/c:Livros/c:Livro"/>
                </table> 
            </body> 
        </html>
    </xsl:template>   
    <xsl:template match="c:Livro">
        <tr bgcolor= "#FFFAFA">
            <td align="center">
                <xsl:value-of select="c:Título"/>
            </td> 
            <td align="center">
                <xsl:value-of select="c:Autores"/>
            </td>
            <td align="center">
                <xsl:value-of select="c:Preço"/>
            </td>
            <xsl:if test="c:Título = 'Green Lanterns, Volume 2'">
                <td>
                    <img width="55" height="85" src="Imagens/Green_Lanterns_Volume 2.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'All-Star Batman, Volume 1'">
                <td>
                    <img width="55" height="85" src="Imagens/All-Star Batman, Volume 1.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'Awkward'">
                <td>
                    <img width="55" height="85" src="Imagens/Awkward.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'Every Body Yoga'">
                <td>
                    <img width="55" height="85" src="Imagens/Every Body Yoga.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'Delta of Venus'">
                <td>
                    <img width="55" height="85" src="Imagens/Delta of Venus.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'At Attention'">
                <td>
                    <img width="55" height="85" src="Imagens/At Attention.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'Cork Dork'">
                <td>
                    <img width="55" height="85" src="Imagens/Cork Dork.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'Salt, Fat, Acid, Heat'">
                <td>
                    <img width="55" height="85" src="Imagens/Salt, Fat, Acid, Heat.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'Henry and the Chalk Dragon'">
                <td>
                    <img width="55" height="85" src="Imagens/Henry and the Chalk Dragon.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'The Icon Hunter'">
                <td>
                    <img width="55" height="85" src="Imagens/The Icon Hunter.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'The Most Beautiful Woman in Florence'">
                <td>
                    <img width="55" height="85" src="Imagens/The Most Beautiful Woman in Florence.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'Imagine Wanting Only This'">
                <td>
                    <img width="55" height="85" src="Imagens/Imagine Wanting Only This.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'The Rise and Fall of the Third Reich'">
                <td>
                    <img width="55" height="85" src="Imagens/The Rise and Fall of the Third Reich.jpg"/>
                </td>
            </xsl:if>
            <xsl:if test="c:Título = 'Voices from Chernobyl'">
                <td>
                    <img width="55" height="85" src="Imagens/Voices from Chernobyl.jpg"/>
                </td>
            </xsl:if>
        </tr>
    </xsl:template>
</xsl:stylesheet>
