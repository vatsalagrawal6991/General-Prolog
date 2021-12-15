/* it is simple tower of hanoi problem which uses standard recurence relation 
I have use cut to stop some unwanted answer in case of query of 1 and also to stop error generating from backtracking
we just have to query like
main(N).
Note N should be some fixed value here otherwise only N=1 will be run because of cut.
here N is no of disc present.
Note main(N) will not back propogte
we have to use 
main2(N).
to backpropogate, here N is variable whose value can range from 1 to 10000.
*/


tH(L,C,_,1) :- write('Move disc 1 from '), write(L), write(' to '), write(C), nl,!.
tH(L,C,R,N) :- N>0, M is (N-1), tH(L,R,C,M), write('Move disc '), write(N), write(' from '), write(L), write(' to '), write(C), nl, tH(R,C,L,M),!.

main(N):- tH(left, centre, right, N).

main2(N):- between(1,10000,N),tH(left, centre, right, N).