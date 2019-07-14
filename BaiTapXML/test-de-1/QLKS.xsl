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
                
                <xsl:for-each select="QLKS/KhachHang">
                    <h3><xsl:value-of select="MaPhieu"/></h3>
                    <xsl:variable name="tMaKH" select="MaKH"/>
                    <xsl:variable name="tTenKH" select="TenKH"/>
                    
                    <h3>Mã khách hàng: <xsl:value-of select="MaKH"/></h3>
                    <h3>Tên khách hàng: <xsl:value-of select="HoKH"/><xsl:value-of select="TenKH"/></h3>
                    <TABLE border="1">
                        <TR>
                            <TH>Mã phiếu</TH>
                            <TH>Mã phòng</TH>
                            <TH>Ngày đến</TH>
                            <TH>Ngày đi</TH>
                            <TH>Đơn giá</TH>
                            <TH>Tiền trả</TH>
                        </TR>
                    
                    
                        <xsl:for-each select="/QLKS/PhieuDatPhong">
                            <xsl:if test="MaKH=$tMaKH">
                                
                                <xsl:variable name="tMaPhieu" select="MaPhieu"/>
                                
                                    <xsl:for-each select="/QLKS/ChiTietPhieu">
                                        <xsl:if test="MaPhieu=$tMaPhieu">
                                            <TR>
                                                <xsl:variable name="tDonGia" select="DonGia"/>
                                                <TD><xsl:value-of select="MaPhieu"/></TD>
                                                <TD><xsl:value-of select="MaPhong"/></TD>
                                                <TD><xsl:value-of select="NgayDen"/></TD>
                                                <TD><xsl:value-of select="NgayDi"/></TD>
                                                <TD><xsl:value-of select="DonGia"/></TD>
                                                <TD><xsl:value-of select="$tDonGia * 3"/></TD>
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
    
-->