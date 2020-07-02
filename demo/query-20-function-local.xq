
declare namespace local = 'http://www.iten-engineering.ch/xquery/local';

declare function local:discountPrice 
    ($price as xs:decimal, $discountRate as xs:decimal) as xs:decimal
{
    let $discount := ($price * $discountRate) div 100
    return ($price - $discountRate)
};


for $x in doc("books.xml")/bookstore/book
let $discountPrice := local:discountPrice($x/price,15)
return <discounts>{data($x/title)}, {$discountPrice}</discounts>