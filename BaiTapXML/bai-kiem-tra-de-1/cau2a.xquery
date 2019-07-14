(: cau a :)
for $Sach in doc("instance1.xml")/QLMS/Sach
where $Sach/MaTL="02"
return $Sach
