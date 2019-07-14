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
                
                
                <xsl:for-each select="QLMS/TheDocGia">
                    <xsl:variable name="tMaThe" select="MaThe"/>
                    
                    <h3>Mã thẻ: <xsl:value-of select="MaThe"></xsl:value-of></h3>
                    <h3>Tên đọc giả: <xsl:value-of select="TenDG"></xsl:value-of></h3>
                    <TABLE border="1">
                        <TR>
                            <TH>Mã sách</TH>
                            <TH>Tên sách</TH>
                            <TH>Ngày mượn</TH>
                            <TH>Ngày trả</TH>
                            <TH>Tại chỗ</TH>
                        </TR>
                    
                    
                        <xsl:for-each select="/QLMS/ChiTietMuon">
                            <xsl:if test="MaThe=$tMaThe">
                                <xsl:variable name="tMaSach" select="MaSach"/>
                                <xsl:variable name="tNgayMuon" select="NgayMuon"/>
                                <xsl:variable name="tNgayTra" select="NgayTra"/>
                                <xsl:variable name="tTaiCho" select="TaiCho"/>
                                
                                <xsl:for-each select="/QLMS/Sach">
                                    <xsl:if test="MaSach=$tMaSach">
                                        <TR>
                                            <TD><xsl:value-of select="$tMaSach"/></TD>
                                            <TD><xsl:value-of select="TenSach"/></TD>
                                            <TD><xsl:value-of select="$tNgayMuon"/></TD>
                                            <TD><xsl:value-of select="$tNgayTra"/></TD>
                                            <TD><xsl:value-of select="$tTaiCho"/></TD>
                                        </TR>                                        
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:if>
                        </xsl:for-each>
                    </TABLE>
                    <hr></hr>
                </xsl:for-each>
            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>

<!-- 
<TR>
    <TH>Mã sách</TH>
    <TH>Tên sách</TH>
    <TH>Ngày mượn</TH>
    <TH>Ngày trả</TH>
    <TH>Tại chỗ</TH>
    <TH>Tiền trả</TH>
</TR>

-->
