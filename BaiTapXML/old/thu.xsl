<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/TR/REC-html40">
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="document/greeting"/>
                </title>
            </head>
            <body>
                <h1 align="center">
                    <font color="#008080"> <xsl:value-of select="document/message"/></font>
                </h1>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>