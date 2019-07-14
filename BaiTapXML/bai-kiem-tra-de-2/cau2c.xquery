for $DangKyTour in doc("instance1.xml")/QLDL/DangKyTour
where $DangKyTour/TinhTrang = "Tốt"
return (
        for $ToChucTour in doc("instance1.xml")/QLDL/ToChucTour
        where $ToChucTour/MaChuyenDi = $DangKyTour/MaChuyenDi
        return 
            <result>
                {$ToChucTour}
                {$DangKyTour}
            </result>
       )