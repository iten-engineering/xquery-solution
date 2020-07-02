module namespace lib = 'http://www.iten-engineering.ch/xquery/lib';

declare function lib:discountPrice ($price as xs:decimal, $discountRate as xs:decimal) as xs:decimal
{
    let $discount := ($price * $discountRate) div 100
    return ($price - $discountRate)
};
