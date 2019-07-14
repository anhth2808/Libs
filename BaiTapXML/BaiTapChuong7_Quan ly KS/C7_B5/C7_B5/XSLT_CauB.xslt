<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" />

  <xsl:template match="/">
    <html>
      <head>
        <title>HÓA ĐƠN THANH TOÁN</title>
      </head>
      <body>
        <h1 align="center">
          <font color = "red"> HÓA ĐƠN THANH TOÁN </font>
        </h1>


        <h4 align="left">Mã Khách Hàng : </h4>
        <h4 align="left">Tên Khách Hàng: </h4>
        <h4 align="left">CMND : </h4>
        <h4 align="left">Ngày Lập:</h4>

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
       

          <TABLE align="center"  border="1">
            <tr >
              <TH WIDTH= "30" HEIGHT= "5">
                <xsl:number value="position()" format="1"/>
              </TH>
              <TH WIDTH= "150" HEIGHT= "23">              </TH>
              <TH WIDTH= "150" HEIGHT= "23">              </TH>
              <TH WIDTH= "150" HEIGHT= "23">              </TH>
              <TH WIDTH= "150" HEIGHT= "23">              </TH >
              <TH WIDTH= "150" HEIGHT= "23">              </TH >
              <TH WIDTH= "150" HEIGHT= "23">              </TH >
              <TH WIDTH= "150" HEIGHT= "23">              </TH>
            </tr>
          </TABLE>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
