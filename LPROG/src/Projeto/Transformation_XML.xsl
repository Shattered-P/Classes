<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : Transformation_XML.xsl
    Created on : May 28, 2017, 5:15 PM
    Author     : Rachine Ribeiro
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
	<Livros>
		<xsl:apply-templates select="/Livraria/Secção/Livros"/>
        </Livros>
</xsl:template>

<xsl:template match="Livro">
	<Livro>
		<Titulo>
			<xsl:value-of select="Titulo" />
                 </Titulo>
		<SubTitulo>
			<xsl:apply-templates select="SubTitulo" />
                 </SubTitulo>
		
                <Autores>
			<xsl:for-each select="Autores/*">
				<Autor>
				 <xsl:value-of select="Autor/."/>m&#178;
				</Autor>
			</xsl:for-each>
                  </Autores>
                 
                 <Tradutor>
			<xsl:apply-templates select="Tradutor" />
                 </Tradutor>
		
                 <Sinopse>
			<xsl:apply-templates select="Sinopse" />
                 </Sinopse>
		
		<Publisher>
			<xsl:apply-templates select="Publisher" />
                </Publisher>
		<ClassTeam>
			<xsl:value-of select="ClassTeam"/> m&#178;
                </ClassTeam>
		<SobreAutor>
			<xsl:apply-templates select="SobreAutor" />
                </SobreAutor>
                
                <CopiasVendidas>
			<xsl:apply-templates select="CopiasVendidas" />
                </CopiasVendidas>
                 
                <Preço>
			<xsl:apply-templates select="@desconto" />
                </Preço>
        </Livro>
</xsl:template>


</xsl:stylesheet>
