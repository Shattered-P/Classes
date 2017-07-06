<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : teste1_livraria.xsl
    Created on : 27 de Maio de 2017, 14:33
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
                <title>teste1_livraria.xsl</title>
            </head>
            <body> 
                <table border="2" bgcolor="#efefef">
                    <tr>                        
                        <th bgcolor= "#d1cfcf">Título</th>
                        <th bgcolor= "#d1cfcf">Preço</th>
                        <th bgcolor= "#d1cfcf">Autor</th>
                        <th bgcolor= "#d1cfcf">Sinopse</th>
                    </tr>                
                    <xsl:apply-templates select="c:Livraria/c:Secção/c:Livros/c:Livro"/>
                </table> 
            </body> 
        </html>
    </xsl:template>
    
    <xsl:template match="c:Livro">
        <tr>
            <td align="center">
                <xsl:value-of select="c:Título"/>
            </td> 
            <td align="center">
                <xsl:value-of select="c:Preço"/>
            </td>
            <td align="center">
                <xsl:value-of select="c:Autores"/>
            </td>
            <td>
                <xsl:value-of select="c:Sinopse"/>
            </td>
            
        </tr>             
    </xsl:template>

</xsl:stylesheet>
