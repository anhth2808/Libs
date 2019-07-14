for $DSTour in doc("instance1.xml")/QLDL/DSTour
where $DSTour/Gia < 400000
return $DSTour