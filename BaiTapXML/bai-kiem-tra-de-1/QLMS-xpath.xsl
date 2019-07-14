<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <HTML>
            <HEAD></HEAD>
            <BODY>
                <h2>Câu a.</h2>
                <h2><xsl:value-of select="//QLMS/Sach[MaSach='02']"/></h2>
            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>