<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : teste3_livraria.xsl
    Created on : 27 de Maio de 2017, 18:50
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
                <title>teste3_livraria.xsl</title>
            </head>
            <body bgcolor="#efefef"> 
                <table border="2" align="center">
                    <tr>                  
                        <th bgcolor= "#d1cfcf">Tema</th>      
                        <th bgcolor= "#d1cfcf">Título</th>
                        <th bgcolor= "#d1cfcf">Autor</th>
                        <th bgcolor= "#d1cfcf">Sobre o Autor</th>
                    </tr>                
                    <xsl:apply-templates select="c:Livraria/c:Secção/c:Livros/c:Livro">
                        <xsl:sort select="c:ClassTema"/>
                    </xsl:apply-templates>
                </table> 
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="c:Livro">       
        <tr  bgcolor= "#FFFAFA">
            <xsl:if test="c:ClassTema = 'Arte'">
                <td align="center">
                    <xsl:value-of select="c:ClassTema"/>
                </td> 
                <td align="center">
                    <xsl:value-of select="c:Título"/>
                </td> 
                <td align="center">
                    <xsl:value-of select="c:Autores"/>
                </td> 
                <td align="center">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="c:SobreAutor"/>
                        </xsl:attribute>
                        <xsl:value-of select="c:SobreAutor"/> 
                    </a>
                </td>   
            </xsl:if>
        </tr>
    </xsl:template>
</xsl:stylesheet>
