(: cau a :)
let $regex := "Nha Trang"

for $TheDocGia in doc("instance1.xml")/QLMS/TheDocGia
where matches($TheDocGia/DiaChi, $regex)=true()
return $TheDocGia
