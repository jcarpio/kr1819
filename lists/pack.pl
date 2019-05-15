% P09 (**) Pack consecutive duplicates of list 
%    elements into sublists.
%    If a list contains repeated elements they 
%    should be placed in separate sublists.
%
%  Example:
%  ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%  X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

pack([],[]).

pack([E], [[E]]).

pack([H1, H1|Tail], [[H1|Hr]|Tr] ):-  pack([H1|Tail], [Hr|Tr]).

pack([H1, H2|Tail], [[H1]|R]):- H1 \= H2,  pack([H2|Tail], R).

% pack([c,a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%  X = [[c], [a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

% pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%  X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]


% pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%  X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

% pack([a,a,a,b,c,c,a,a,d,e,e,e,e],X).
%  X = [[a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

