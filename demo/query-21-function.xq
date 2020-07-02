import module  namespace lib = "http://www.iten-engineering.ch/xquery/lib" at "query-21-module.xq";

for $x in doc("books.xml")/bookstore/book
let $discountPrice := lib:discountPrice($x/price,15)
return <discounts>{data($x/title)}, {$discountPrice}</discounts>