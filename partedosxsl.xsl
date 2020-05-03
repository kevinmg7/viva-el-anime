<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>


    <xsl:template match="/">
        <root>
            <xsl:for-each select="/rss/channel">
                <introduction>
                    <language>
                        <xsl:value-of select="language"/> 
                    </language>
                    <copyright>
                        <xsl:value-of select="copyright"/> 
                    </copyright>
                    <lastBuildDate>
                        <xsl:value-of select="lastBuildDate"/> 
                    </lastBuildDate>
                </introduction>
                <xsl:for-each select="/rss/channel/item">
                    <notice>
                        <guid>
                            <xsl:value-of select="guid"/> 
                        </guid>
                        <pubDate>
                            <xsl:value-of select="pubDate"/> 
                        </pubDate>
                        <category>
                            <xsl:value-of select="category"/> 
                        </category>
                    </notice>
                </xsl:for-each>
            </xsl:for-each>
            
        </root>
    </xsl:template>

</xsl:stylesheet>
