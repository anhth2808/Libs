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
                <xsl:for-each select="QLDL/DangKyTour">
                    <h3>Mã phiếu: <xsl:value-of select="MaPhieuDK"/></h3>
                    <TABLE border="1">
                        <TR>
                            <TH>Mã chuyến đi</TH>
                            <TH>Ngày đăng ký</TH>
                            <TH>Tổng tiền</TH>
                            <TH>Tiền đặc cọc</TH>
                            <TH>Tình trạng</TH>
                            <TH>Phải trả</TH>
                        </TR>
                        <TR>
                            <xsl:variable name="tong"/> 
                            <TD><xsl:value-of select="MaChuyenDi"/></TD>
                            <TD><xsl:value-of select="NgayDK"/></TD>
                            <TD><xsl:value-of select="TongSoTien"/></TD>
                            <TD><xsl:value-of select="TienDatCoc"/></TD>
                            <TD><xsl:value-of select="TinhTrang"/></TD>
                            <xsl:if test="TinhTrang='Tốt'">
                                <TD><xsl:value-of select="format-number(TongSoTien+TienDatCoc, '#')"/></TD>                             
                            </xsl:if>
                            <xsl:if test="TinhTrang='Hủy'">
                                <TD><xsl:value-of select="format-number(TongSoTien+TienDatCoc div 2, '#')"/></TD>                          
                            </xsl:if>
                            
                        </TR>
                    </TABLE>
                </xsl:for-each>
            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>