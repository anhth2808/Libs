<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        
        <HTML>
            <HEAD></HEAD>
            <BODY>
                <h2>Ket qua truy xuat</h2> <xsl:value-of select="SPECIALS"/>
                <h2>Xuat ra các Artist</h2> <xsl:value-of select="//ARTIST"/>
                <h2>Diem xem  co bao nhieu CD</h2> <xsl:value-of select="count(/SPECIALS/CD)"/>  
                <h2>Xuất ra con của CD</h2> <xsl:value-of select="/SPECIALS/CD/descendant::*"/>
                <h2>Xuất ra CD đầu tiên</h2> <xsl:value-of select="/SPECIALS/CD[1]"/>
                <h2>Xuất ra CD thứ 2</h2> <xsl:value-of select="/SPECIALS/CD[2]"/>
                <h2>Xuất ra CD cuối cùng</h2> <xsl:value-of select="/SPECIALS/CD[last()]"/>
                <h2>Chọn phần tử cha của CD</h2> <xsl:value-of select="//CD/parent::*"/>
                <h2>Chọn các Track có length be hon 5 phut</h2> <xsl:value-of select="//CD/TRACK[@length &lt; 5]"/>
                <h2>Tim cac dia CD co ten bat dau la A</h2> <xsl:value-of select="//CD[starts-with(normalize-space(),'A')]"/>
                <h2>Tim cac dia CD co ten chua chu "hihi"</h2> <xsl:value-of select="//CD[not(starts-with(normalize-space(), 'hihi'))]"/>
                <h2>Tim cac dia CD co ten khong chua chu "Xuan"</h2> 
                <!-- <xsl:value-of select="//CD[contains(self::*, 'hihi') = false()]"/> -->
                <h2>chon cac phan tu cap tren cua CD</h2> 
                <h2>Tim cac phan tu cung cap truoc phan tử CD đầu tiên</h2> <xsl:value-of select="//CD[1]/preceding-sibling::*"/>
                <h2>Chọn các phần tử cùng cấp sau phần tử CD đầu tiên</h2>  <xsl:value-of select="//CD[1]/following-sibling::*"/>
                <h2>Chọn các phần tử theo sau phần MESSAGE và các phần tử con của nó</h2> <xsl:value-of select="//MESSAGE/following-sibling::*"/>
                <h2> chọn phần tử là tổ tiên của title</h2>
                <h2>Chọn tất cả các phần tử trước CD ngoại trừ phần tử gốc</h2>
                <h2>Chọn tất cả các phần tử CD và con của nó</h2>
                <h2>Chọn các phần tử Track và tổ tiên của nó</h2>
                <h2>Chọn phần tử đi sau phần tử MESSAGE</h2>
                <h2>Đếm xem có bao nhiêu phần tử TRACK</h2> <xsl:value-of select="count(//TRACK)"/>
                <h2>Có bao nhiều phần tử TRACK trong đĩa CD cuối cùng</h2> <xsl:value-of select="count(//CD[1]/TRACK)"/>
            </BODY>
        </HTML>
        
    </xsl:template>
</xsl:stylesheet>