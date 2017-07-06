<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
                xmlns:fo="http://aaa">
    <xsl:output method="text" omit-xml-declaration="yes" indent="yes"/>
    
    <xsl:template match="/Livraria/Secção/Livros"> 
        <xsl:apply-templates select="titulo"/>
        <xsl:apply-templates select="Subtitulo"/>
        <xsl:apply-templates select="autores/autor"/>
        <xsl:apply-templates select="Tradutor"/> 
        <xsl:apply-templates select="Sinopse"/>       
        <xsl:apply-templates select="Publisher"/>
        <xsl:apply-templates select="ClassTeam"/>
         <xsl:apply-templates select="SobreAutor"/>
        <xsl:apply-templates select="CopiasVendidas"/>
        <xsl:apply-templates select="preco"/>
             
    </xsl:template> 
   
    <xsl:template match="Titulo">
        <xsl:text>Titulo=</xsl:text>
        <xsl:value-of select="Título"/>
        <xsl:text>----------------</xsl:text>
    </xsl:template>
    
    <xsl:template match="Subtitulo">
        <xsl:text>Subtitulo=</xsl:text>
        <xsl:value-of select="SubTítulo"/>
        <xsl:text>-------------</xsl:text>
    </xsl:template>
    
    <xsl:template match="Autores">
        <xsl:text>Autor=</xsl:text>
        <xsl:for-each select="Autor">
            <br>
                <xsl:value-of select="Autor" />
            </br>
        </xsl:for-each>
    </xsl:template>
    
     <xsl:template match="Tradutor">
        <xsl:text>Tradutor:</xsl:text>
        <xsl:value-of select="Tradutor"/>
        <xsl:text>-------------</xsl:text>
    </xsl:template>
    
    <xsl:template match="Sinopse">
        <xsl:text>Sinopse:</xsl:text>
        <xsl:value-of select="Sinopse"/>
        <xsl:text>-------------</xsl:text>
    </xsl:template>
    
    <xsl:template match="Publisher">
        <xsl:text>Publisher:</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>-------------</xsl:text>
    </xsl:template>
    
     <xsl:template match="ClassTema">
        <xsl:text>ClassTema:</xsl:text>
        <xsl:value-of select="ClassTema"/>
        <xsl:text>-------------</xsl:text>
    </xsl:template>
    
       <xsl:template match="SobreAutor">
        <xsl:text>SobreAutor:</xsl:text>
        <xsl:value-of select="SobreAutor"/>
        <xsl:text>-------------</xsl:text>
    </xsl:template>
    
    <xsl:template match="CopiasVendidas">
        <xsl:text>CopiasVendidas:</xsl:text>
        <xsl:value-of select="CopiasVendidas"/>
        <xsl:text>--------------</xsl:text>
    </xsl:template>
    
    <xsl:template match="Preço">
        <xsl:text>Preco=</xsl:text>
        <xsl:value-of select="Preço"/>
        <xsl:text>------------</xsl:text>
    </xsl:template>
   
</xsl:stylesheet>