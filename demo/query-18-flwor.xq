
<web-titles> {

    for $book in doc("books.xml")/bookstore/book
    let $title := $book/title
    where $book/@category = 'WEB'
    order by $title
    return $title  

} </web-titles>

