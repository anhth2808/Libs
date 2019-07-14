<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <HTML>
            <HEAD></HEAD>
            <BODY>
                <H3 style="text-align: center; color: blue;">Trần Hoàng Anh</H3>
                <h2>Ket qua truy xuat</h2> <xsl:value-of select="/KhachHang/HoKH='Nguyen'"/>
                
                
            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>