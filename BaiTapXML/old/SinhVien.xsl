<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        
        <HTML>
            <HEAD></HEAD>
            <BODY>
                <TABLE border="1">
                    <TR>
                        <TH>STT</TH>
                        <TH>MaSv</TH>
                        <TH>TenSv</TH>
                        <TH>GioiTinh</TH>
                        <TH>NgaySinh</TH>
                        <TH>MaLop</TH>
                    </TR>
                    <xsl:for-each select="QuanLySinhVien/SinhVien">
                        <TR>
                            <TD><xsl:value-of select="position()" /></TD>
                            <TD><xsl:value-of select="MaSv" /></TD>
                            <TD><xsl:value-of select="TenSv" /></TD>
                            <TD><xsl:value-of select="GioiTinh" /></TD>
                            <TD><xsl:value-of select="NgaySinh" /></TD>
                            <TD><xsl:value-of select="MaLop" /></TD>
                        </TR>
                    </xsl:for-each>
                </TABLE>
            </BODY>
        </HTML>
        
    </xsl:template>
</xsl:stylesheet>