xquery version "1.0";

<article-list> {

    for $pos in doc( "invoice.xml" )//position

    let $desc := $pos/description, 
        $price := $pos/@price,
        $currency := $pos/@currency

	order by $desc

	return 
	    <article>
	        <name>{data($desc)}</name>
	        <price currency="{data($currency)}" >{data($price)}</price>
	    </article>	

} </article-list>










