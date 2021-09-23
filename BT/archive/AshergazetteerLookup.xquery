xquery version "3.1";
declare namespace tei="http://www.tei-c.org/ns/1.0";
(: this file is for exide!!
:declare default element namespace "http://www.tei-c.org/ns/1.0";
 : That is how we declare the namespace WITHOUT having to use a prefix later. :)
 
(: Sinai: the following will extract from Asher a table of all placementions with id's and refs:
:)

declare variable $Asher as document-node() := doc('');

let $Mention := $Asher//tei:name
let $MentionID := $Mention/@xml:id
let $name := $Mention ! /string() ! normalize-space()
let $PlaceRef := $Mention/@ref/string()
(:let $AsherDPRs := $AsherPlaceRefs => distinct-values()
:)
for $c at $pos in $Mention
return ($pos || ':' || $name|| ':' || $MentionID|| ':' || $PlaceRef)
(:for $c at $pos in $AsherDPRs
    let $cMatch := substring-after($c, '#')
    let $SImatch := $MitfordSI//*[@xml:id = $cMatch]
    let $geo := ($SImatch//tei:geo ! string())[1]
   return ($pos || ': ' || $cMatch || ': ' || $geo)
 return concat($pos, '. ', $cMatch, ': ', $geo)  :)
