for $x in doc("book.xml")/bookstore/book
where $x/price>30
return $x/title