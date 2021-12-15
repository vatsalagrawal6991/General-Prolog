/* The queries which can be written is any of the following
1) childless(X).
2) main(X).
3) parent(_,X), \+(parent(X,_)).
4) \+child(X).
5) person(X), \+(parent(X,_)).

Note 1st and 2nd and 3rd query are same and will only be true only when some variable x is present in parent predicate as child and have no parent
it will backpropogate also but if some other person is present then it will not find that person.

Note 4th query will not backpropogate if variable X is given and will result in true and false and not doing unification.
it is the most desirable query.

Note 5th query use extra predicate person and is the most appropriate query.

Note I have not used aggregrate operator due to limit of use of them in swi prolog and it creates error in gnuprolog
Also given countofall is not working in prolog of mine
*/


parent(arti, babli).
parent(arti, bunty).
parent(babli, chitra).
parent(babli, chintan).
parent(bunty, divya).
parent(bunty, divesh).
male(bunty).
male(chintan).
male(divesh).

childless(X) :- parent(_,X), \+(parent(X,_)).

child(X):-parent(X,_).

main(X) :- childless(X).

person(arti).
person(bunty).
person(babli).
person(chitra).
person(chintan).
person(divya).
person(divesh).




