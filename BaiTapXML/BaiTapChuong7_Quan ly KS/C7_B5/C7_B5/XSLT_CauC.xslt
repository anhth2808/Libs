<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  
  <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
  <!-- THAY ĐỔI MÃ KHÁCH HÀNG ĐỂ TRUY XUẤT THÔNG TIN-->
  <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
  
  <xsl:variable name="MAKHACHHANG" select="001"/>
  <!-- <xsl:variable name="MAKHACHHANG" select="//*/ID_search"/> -->
  <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
  <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
  <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
  
  <xsl:output method="html" />
  
  <xsl:template match="/">
    <html>
      <head>
        <title>CHƯƠNG TRÌNH QUẢN LÝ KHÁCH SẠN</title>
      </head>
      <h1 align="center">
        <font color = "red"> HÓA ĐƠN THANH TOÁN </font>
      </h1>
      <body>
          <!--         TEST SEARCH THEO MAKH
        <font size ="5">Search ID:</font>
        <input type="text" name="search" id="search" value="" />
        <input type="button" name="button" value="Search" onclick="search();"/>
        <p id="demo"></p>
          <script type="text/javascript">
            function search()
            {  var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
            if (this.readyState == 4 ) {if(this.status == 200)
            myFunction(this);
            }
            };
            xhttp.open("GET", "XML_KhachSan.xml", true);
            xhttp.send();

            function myFunction(xml) {
            var xmlDoc = xml.responseXML;
            var x;
            var txt = "";
            x = xmlDoc.getElementsByTagName("ID_search")[0].childNodes[0];
            txt += x.nodeValue + "\n<br></br>";
            x.nodeValue = document.getElementById("search").value;
            x = xmlDoc.getElementsByTagName("ID_search")[0].childNodes[0];
            txt += x.nodeValue + "<br></br>";    
    document.getElementById("demo").innerHTML = txt;
            }
            }
          </script> -->
        <xsl:for-each select="DanhSachKhachSan/KhachSan/KhachHang[@MaKH=$MAKHACHHANG]">
          <font color="black">
            <h4 align="left">
              Mã Khách Hàng : <xsl:value-of select="MaKH"/>
            </h4>
            <h4 align="left">
              Tên Khách Hàng: <xsl:value-of select="TenKH"/>
            </h4>
            <h4 align="left">
              CMND :<xsl:value-of select="CMND"/>
            </h4>
            <h4 align="left">
              Ngày Lập: <input type="date" id="start" name="trip"
                min="2018-01-01" max="2028-12-31" /> 
            </h4>
          </font>
          
          <TABLE align="center"  border="1">
            <TR style="color:blue">
              <TH WIDTH= "20" HEIGHT= "5" talign ="center">STT </TH>
              <TH WIDTH= "150" HEIGHT= "23" align ="center">Ngày Đến</TH>
              <TH WIDTH= "150" HEIGHT= "23" align ="center">Ngày Đi</TH>
              <TH WIDTH= "150" HEIGHT= "23" align ="center">Mã Phòng</TH>
              <TH WIDTH= "150" HEIGHT= "23" align ="center">Đơn Giá Phòng</TH>
              <TH WIDTH= "150" HEIGHT= "23" align ="center">Mã Dịch Vụ</TH>
              <TH WIDTH= "150" HEIGHT= "23" align ="center">Đơn Giá Dịch Vụ</TH>
              <TH WIDTH= "150" HEIGHT= "23" align ="center">Thành Tiền</TH>
            </TR>
          </TABLE>
          <xsl:for-each select="HoaDon">
            
            <xsl:variable name="color_row">
              <xsl:if test=" LoaiPhong='Doi'">#4682B4</xsl:if>
            </xsl:variable>
            
            <TABLE align="center"  border="1">
              <tr bgcolor="{$color_row}">
                <TH WIDTH= "30" HEIGHT= "5">
                  <xsl:number value="position()" format="1"/>
                </TH>
                <TH WIDTH= "150" HEIGHT= "23">
                  <xsl:value-of select="NgayDen"/>
                </TH >
                <TH WIDTH= "150" HEIGHT= "23">
                  <xsl:value-of select="NgayDi"/>
                </TH>
                <TH WIDTH= "150" HEIGHT= "23">
                  <xsl:value-of select="MaPhong"/>
                </TH>
                <TH WIDTH= "150" HEIGHT= "23">
                  <xsl:value-of select="DonGia"/>
                </TH>
                <TH WIDTH= "150" HEIGHT= "23">
                  <xsl:value-of select="MaDV"/>
                </TH >
                <TH WIDTH= "150" HEIGHT= "23">
                  <xsl:value-of select="DonGia"/>
                </TH >
                <TH WIDTH= "150" HEIGHT= "23">
                  <xsl:value-of select="number(substring(NgayDi,1,2)-substring(NgayDen,1,2))*DonGia+DonGia"/>
                </TH>
              </tr>
            </TABLE>
          </xsl:for-each>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>