xquery version "3.1";
declare namespace tei="http://www.tei-c.org/ns/1.0";
(: this file is for exide, might require adaptation. 
meant to build lookup for the place references!
:declare default element namespace "http://www.tei-c.org/ns/1.0"; 
 : That is how we declare the namespace WITHOUT having to use a prefix later. :)
declare variable $Chas as document-node() := doc('https://raw.githubusercontent.com/ebeshero/UpTransformation/master/data/Charles1.xml');
declare variable $ChasPlay as element() := $Chas/*;
declare variable $ChasActs as element(tei:div)+ := doc('/db/mitford/literary/Charles1.xml')//tei:body/tei:div;
declare variable $MitfordSI as document-node() := doc('https://digitalmitford.org/si.xml');

let $places := $MitfordSI//tei:placeName 
let $Chasplaces := $Chas//tei:placeName
let $ChasPlaceRefs := $Chasplaces/@ref ! normalize-space()
let $ChasDPRs := $ChasPlaceRefs => distinct-values()
for $c in $ChasDPRs
    let $cMatch := substring-after($c, '#')
    let $SImatch := $MitfordSI//*[@xml:id = $cMatch]
    return $SImatch