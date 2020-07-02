for $x in doc("books.xml")/bookstore/book
where $x/price>30 and $x/price<40
order by $x/title
return $x/title
