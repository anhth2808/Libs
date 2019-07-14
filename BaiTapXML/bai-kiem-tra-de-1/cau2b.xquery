(: cau a :)

<result>
{
    for $Sach in doc("instance1.xml")/QLMS/Sach
    where $Sach/MaSach
    return  
        <item>
            {
                for $ChiTietMuon in doc("instance1.xml")/QLMS/ChiTietMuon
                where substring($ChiTietMuon/NgayMuon, 7)="2018" and $ChiTietMuon/MaSach=$Sach/MaSach
                return $ChiTietMuon                    
            }
        </item>
}
</result>