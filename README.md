# Made By Vatsal Agrawal
# Tower-of-Hanoi-and-other-Prolog-Problems
General Prolog files with Tower of Hanoi Solving in prolog

**************************HOW TO MAKE EXECUTABLE AND RUN PROGRAMME******************************

1) main(N).
Note N should be some fixed value here otherwise only N=1 will be run because of cut.
here N is no of disc present.
Note main(N) will not back propogte
we have to use 
main2(N).
to backpropogate, here N is variable whose value can range from 1 to 10000.


Note

1) it is simple tower of hanoi problem which uses standard recurence relation 
I have use cut to stop some unwanted answer in case of query of 1 and also to stop error generating from backtracking
we just have to query like
2) I have written rules for mother and father 
which can be queried by 
father(X,Y).
and 
mother(X,Y).
father is defined as parent who is male 
and mother is defined as parent who is not male
the update rule equivalent of prolog is defining predicate in prolog
3) The queries which can be written is any of the following
a) childless(X).
b) main(X).
c) parent(_,X), \+(parent(X,_)).
d) \+child(X).
e) person(X), \+(parent(X,_)).
Note 1st and 2nd and 3rd query are same and will only be true only when some variable x is present in parent predicate as child and have no parent
it will backpropogate also but if some other person is present then it will not find that person.
Note 4th query will not backpropogate if variable X is given and will result in true and false and not doing unification.
it is the most desirable query.
Note 5th query use extra predicate person and is the most appropriate query.
Note I have not used aggregrate operator due to limit of use of them in swi prolog and it creates error in gnuprolog
Also given countofall is not working in prolog of mine


Problem Statment

1) Assume we have a data with a binary predicate parent, which is true of two people
iff the person specified as the first argument is the parent of the person specified as the second
argument. Write a query that defines the property of being childless.
2)Suppose we have a kinship dataset with a binary predicate parent and a unary
predicate male. Write update rules to replace all factoids using the parent predicate with
equivalent factoids using the binary predicates father and mother. Kinship Dataset:
p a ren t ( a r t i , b a b l i )
p a ren t ( a r t i , bunty )
p a ren t ( b a bli , c h i t r a )
p a ren t ( b a bli , c hi n t a n )
p a ren t ( bunty , divy a )
p a ren t ( bunty , di v e s h )
male ( bunty )
male ( c hi n t a n )
male ( di v e s h )
3) Consider the classic puzzle of towers of Hanoi. The recursive formulation of this
problem is straightforward. Write a Prolog program that solves this puzzle. Assume that there
are only three pegs left, centre, and right. The discs are numbered such that if i < j then
disc j is of larger size that disc i. The output of a query to the Prolog program should print
in order a sequence of moves in the following form: ”Move disc 1 from left to centre”.
