

% myLength(List, Result)
% it is true if Rusult unify with the length of
% List

myLength([], 0).

myLength([Head|Tail],   ):-
  myLength(Tail, Result).
