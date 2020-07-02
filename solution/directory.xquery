xquery version "1.0";

<resultat> {
for $person in doc( "directory.xml" )//person
	let $name := ( $person/vorname, $person/nachname )
	where $person/@anrede = 'Frau'
	order by $person/nachname
	return <frau>{$name}</frau>	
} </resultat>










