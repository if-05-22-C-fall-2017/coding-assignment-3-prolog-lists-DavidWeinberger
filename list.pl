parent(adam, john).
parent(eve, john).
parent(eve, lisa).
parent(john, anne).
parent(john, pat).
parent(pat, jacob).
parent(carol, jacob).

male(adam).
male(john).
male(pat).
male(jacob).
female(anne).
female(eve).
female(lisa).
female(carol).

grandparent(GP, GC) :- parent(C, GC), parent(GP, C).


ancestors(X,Z) :- parent(X,Z). 
ancestors(X,Z) :- parent(X,Y),ancestors(Y,Z).
/*ancestors(john, Z).*/


head(X, [X|_T]).
/*head(b, [a, b, c, d, e]).
**head(a, [a, b, c, d, e]).
*/

tail(T, [_ | T]).
/*tail(X , [a,b,c,d,e]).*/

isMember(X, [X | _]).   
isMember(X, [_ | T]) :- isMember(X, T).
/*isMember(a, [a,b,c,d,e]).   
isMember(c, [a,b,c,d,e]).*/

concatenate([], L, L).
concatenate([H|T], L, [H|ExtendedTail]) :- concatenate(T, L, ExtendedTail).