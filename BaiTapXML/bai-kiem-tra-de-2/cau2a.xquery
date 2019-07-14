for $ToChucTour in doc("instance1.xml")/QLDL/ToChucTour
where substring($ToChucTour/NgayKH, 7)="2017"
return $ToChucTour