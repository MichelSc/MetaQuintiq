<?xml version="1.0" encoding="iso-8859-1"?>

<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:log="log"
    						xmlns:fn="http://www.w3.org/2005/xpath-functions">

<xsl:template match="/">

<xsl:text>
</xsl:text>

<uml:Model 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xmi="http://www.omg.org/spec/XMI/20131001" 
    xmlns:uml="http://www.eclipse.org/uml2/5.0.0/UML" 
    xmi:version="20131001" 
    xmi:id="_Jb-_wDlMEeaBUKK2wCs8Hg" 
    name="RootElement">

<xsl:for-each select="doc/all_classes/class">

  <packagedElement xmi:type="uml:Class"> 
    <xsl:attribute name="xmi:id">
        <xsl:value-of select="id"/>
    </xsl:attribute>
    <xsl:attribute name="name">
        <xsl:value-of select="name"/>
    </xsl:attribute>
  </packagedElement> 
  <xsl:text>
  </xsl:text>
  
</xsl:for-each>

</uml:Model>

</xsl:template>

</xsl:stylesheet>