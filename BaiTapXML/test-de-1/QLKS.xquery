<result>
{
    for $PhieuDatPhong in doc("instance1.xml")/QLKS/PhieuDatPhong
    where $PhieuDatPhong/NgayDatPhong="28/03/2018"
    return 
        <HoaDon>
            {
                for $ChiTietPhieu in doc("instance1.xml")/QLKS/ChiTietPhieu
                where $ChiTietPhieu/MaPhieu=$PhieuDatPhong/MaPhieu
                return <DonGia>{$ChiTietPhieu/DonGia/text()}</DonGia>
            }
        </HoaDon>
}
</result>


(:
<result> {
    for $KhachHang in doc("instance1.xml")/QLKS/KhachHang
    where $KhachHang/HoKH="Nguyen"
    return 
        <LichSuDatPhong>
            <MaKH>{$KhachHang/MaKH/text()}</MaKH>
            <HoTen>{$KhachHang/HoKH/text()}{$KhachHang/TenKH/text()}</HoTen>
            {
                for $PhieuDatPhong in doc("instance1.xml")/QLKS/PhieuDatPhong
                where $PhieuDatPhong/MaKH=$KhachHang/MaKH
                return                     
                    <NgayDatPhong>{$PhieuDatPhong/NgayDatPhong/text()}</NgayDatPhong>
            }
        </LichSuDatPhong>
}
</result>
:)    
    