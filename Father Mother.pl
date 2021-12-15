/* I have written rules for mother and father 
which can be queried by 
father(X,Y).
and 
mother(X,Y).
father is defined as parent who is male 
and mother is defined as parent who is not male
the update rule equivalent of prolog is defining predicate in prolog*/


parent(arti, babli).
parent(arti, bunty).
parent(babli, chitra).
parent(babli, chintan).
parent(bunty, divya).
parent(bunty, divesh).
male(bunty).
male(chintan).
male(divesh).


father(X,Y) :- parent(X,Y), male(X).
mother(X,Y) :- parent(X,Y), \+(male(X)).
