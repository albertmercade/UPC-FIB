grammar Enquestes;

root : (enquesta | pregunta | resposta | item | assoc | alternativa)* 'END' ;

enquesta : PARAULA':' 'ENQUESTA' ID+ ;

pregunta : ID':' 'PREGUNTA' (PARAULA | NUM | PUNTUACIO)+ INTERROGANT;

resposta : ID':' 'RESPOSTA' respostaPossible+ ;

respostaPossible : NUM':' (PARAULA | NUM | PUNTUACIO)+ ';' ;

item : ID':' 'ITEM' ID '->' ID ;

assoc : '(' NUM ',' ID ')' ','?;

alternativa : ID':' 'ALTERNATIVA' ID '[' assoc+ ']' ;


PARAULA : [a-zA-Z\u0080-\u00FF]+ ;
PUNTUACIO : [,.'] ;
ID : [a-zA-Z][a-zA-Z0-9\u0080-\u00FF]* ;
NUM : [0-9]+ ;
INTERROGANT : '?' ;
WS : [ \n\t\r] -> skip ;
