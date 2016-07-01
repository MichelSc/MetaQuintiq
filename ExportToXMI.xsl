<?xml version="1.0" encoding="iso-8859-1"?>

<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:log="log"
    						xmlns:fn="http://www.w3.org/2005/xpath-functions">

<xsl:template match="/">

<uml:Model 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xmi="http://www.omg.org/spec/XMI/20131001" 
    xmlns:uml="http://www.eclipse.org/uml2/5.0.0/UML" 
    xmi:version="20131001" 
    xmi:id="_Jb-_wDlMEeaBUKK2wCs8Hg" 
    name="RootElement">

    
<xsl:text>
</xsl:text>
  <packagedElement xmi:type="uml:DataType" xmi:id="20001" name="QNumber"/>
<xsl:text>
</xsl:text>
  <packagedElement xmi:type="uml:DataType" xmi:id="20002" name="QReal"/>
<xsl:text>
</xsl:text>
  <packagedElement xmi:type="uml:DataType" xmi:id="20003" name="QDate"/>
<xsl:text>
</xsl:text>
  <packagedElement xmi:type="uml:DataType" xmi:id="20004" name="QDateTime"/>
<xsl:text>
</xsl:text>
  <packagedElement xmi:type="uml:DataType" xmi:id="20005" name="QDuration"/>
<xsl:text>
</xsl:text>
  <packagedElement xmi:type="uml:DataType" xmi:id="20006" name="QBoolean"/>
<xsl:text>
</xsl:text>
  <packagedElement xmi:type="uml:DataType" xmi:id="20007" name="QString"/>
<xsl:text>
</xsl:text>
  <packagedElement xmi:type="uml:DataType" xmi:id="20008" name="QKey"/>
<xsl:text>
</xsl:text>

<xsl:for-each select="doc/all_classes/class">

<xsl:text>
</xsl:text>
  <packagedElement xmi:type="uml:Class"> 
    <xsl:variable name="classid" select="id"/>
    <xsl:attribute name="xmi:id">
        <xsl:value-of select="$classid"/>
    </xsl:attribute>
    <xsl:attribute name="name">
        <xsl:value-of select="name"/>
    </xsl:attribute>

    <xsl:if test="base!=''">
<xsl:text>
  </xsl:text>
      <generalization xmi:type="uml:Generalization">
        <xsl:attribute name="xmi:id">
            <xsl:value-of select="$classid+30000"/>
        </xsl:attribute>
        <xsl:attribute name="general">
            <xsl:value-of select="base"/>
        </xsl:attribute>
      </generalization>
    </xsl:if>    

    <xsl:for-each select="/doc/all_attributes/attribute[class_id=$classid]">

<xsl:text>
  </xsl:text>

    <ownedAttribute xmi:type="uml:Property">
      <xsl:attribute name="xmi:id">
          <xsl:value-of select="id"/>
      </xsl:attribute>
      <xsl:attribute name="name">
          <xsl:value-of select="name"/>
      </xsl:attribute>
      <xsl:attribute name="type">
          <xsl:value-of select="type_id"/>
      </xsl:attribute>
    </ownedAttribute>
  </xsl:for-each>
    
  </packagedElement> 

</xsl:for-each>

<xsl:text>
</xsl:text>

<xsl:for-each select="doc/all_associations/association">

<xsl:variable name="association_id">
  <xsl:number value="position()*10+40000" />
</xsl:variable>

<xsl:text>
</xsl:text>
  <packagedElement xmi:type="uml:Association">
    <xsl:attribute name="xmi:id">
      <xsl:value-of select="$association_id"/>
    </xsl:attribute>
    <xsl:attribute name="name">
      <xsl:value-of select="name"/>
    </xsl:attribute>
    <xsl:attribute name="memberEnd">
      <xsl:value-of select="$association_id+1"/> 
      <xsl:text> </xsl:text>
      <xsl:value-of select="$association_id+2"/>
    </xsl:attribute>

<xsl:text>
  </xsl:text>
    <ownedEnd xmi:type="uml:Property">
      <xsl:attribute name="xmi:id">
        <xsl:value-of select="$association_id+1"/>
      </xsl:attribute>
      <xsl:attribute name="name">
        <xsl:value-of select="left_role"/>
      </xsl:attribute>
      <xsl:attribute name="type">
        <xsl:value-of select="left_class_id"/>
      </xsl:attribute>
      <xsl:attribute name="association">
        <xsl:value-of select="$association_id"/>
      </xsl:attribute>
    </ownedEnd>

<xsl:text>
  </xsl:text>
    <ownedEnd xmi:type="uml:Property">
      <xsl:attribute name="xmi:id">
        <xsl:value-of select="$association_id+2"/>
      </xsl:attribute>
      <xsl:attribute name="name">
        <xsl:value-of select="right_role"/>
      </xsl:attribute>
      <xsl:attribute name="type">
        <xsl:value-of select="right_class_id"/>
      </xsl:attribute>
      <xsl:attribute name="association">
        <xsl:value-of select="$association_id"/>
      </xsl:attribute>
    </ownedEnd>

  </packagedElement>

</xsl:for-each>

<xsl:text>
</xsl:text>

</uml:Model>

</xsl:template>

</xsl:stylesheet>