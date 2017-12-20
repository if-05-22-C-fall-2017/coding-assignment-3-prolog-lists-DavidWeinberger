prepend(E, L, [E|L]).
/*prepend(5, [2, 3, 4], X).*/

addElement(E,[],[E]).
/*addElement(5, [], X).*/
addElement(E,[H|T],[H|ExtendTail]):- addElement(E,T,ExtendTail).
/*addElement(5, [2, 3, 4, 6], X).*/

hasLength([], 0).
/*hasLength([],X).*/
hasLength([_|T], X) :- hasLength(T, N), X is N+1 .
/*hasLength([1,2,3,4],X).*/



remove(E, [E|T], T).
/*remove(4,[2,3,4],X).*/
remove(E, [H|T], [H|ReducedTail]):- remove(E,T, ReducedTail).
/*remove(5, [2, 3, 5, 6], X).*/