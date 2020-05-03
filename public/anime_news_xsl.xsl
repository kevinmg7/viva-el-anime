<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>


    <xsl:template match="/">
        <root>
            <xsl:for-each select="/rss/channel">
                <introduction>
                    <title>
                        <xsl:value-of select="title"/> 
                    </title>
                    <link>
                        <xsl:value-of select="link"/> 
                    </link>
                    <description>
                        <xsl:value-of select="description"/> 
                    </description>
                </introduction>
                <xsl:for-each select="/rss/channel/item">
                    <notice>
                        <title>
                            <xsl:value-of select="title"/> 
                        </title>
                        <link>
                            <xsl:value-of select="link"/> 
                        </link>
                        <description>
                            <xsl:value-of select="description"/> 
                        </description>
                    </notice>
                </xsl:for-each>
            </xsl:for-each>
        </root>
        
    </xsl:template>

</xsl:stylesheet>
