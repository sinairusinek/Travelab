<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <!--    It is important to choose version 2.0 in order to enable using the xpath-default-namespace attribute.
        also, use Saxon-PE 9.8.0.12 to process!
--> 
    <xsl:strip-space elements="*"/>
    <xsl:output indent="yes"/>
    
    <xsl:template match="name">
        <xsl:copy>
            <xsl:attribute name="xml:id">
                <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/> 
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>  
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>