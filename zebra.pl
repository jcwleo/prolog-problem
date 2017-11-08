
/* Rules
	1. The Englishman lives in the red house.
	2. The Spaniard owns a dog.
	3. The Japanese man is a painter.
	4. The Italian drinks tea.
	5. The Norwegian lives in the first house on the left.
	6. The green house is on the right of the white one.
	7. The photographer breeds snails.
	8. The diplomat lives in the yellow house.
	9. Milk is drunk in the middle house.
	10. The owner of the green house drinks coffee.
	11. The Norwegian's house is next to the blue one.
	12. The violinist drinks orange juice.
	13. The fox is in a house next to that of the physician.
	14. The horse is in a house next to that of the diplomat.
*/

zebra_water(Owner,Drinker) :-
	houses(Hs),
        member(h(Owner,zebra,_,_,_), Hs),
	member(h(Drinker,_,_,water,_), Hs).


houses(Hs) :-
	% each house in the list Hs of houses is represented as:
	%      h(Nationality, Pet, Job, Drink, Color)
	length(Hs, 5),                                    % there are five houses in street
	member(h(englishman,_,_,_,red), Hs),              % 1
	member(h(spaniard,dog,_,_,_), Hs),                % 2
	member(h(japanese,_,painter,_,_), Hs),            % 3
	member(h(italian,_,_,tea,_), Hs),                 % 4
	Hs = [h(norwegian,_,_,_,_)|_],                    % 5
	next(h(_,_,_,_,green), h(_,_,_,_,white), Hs),     % 6
	member(h(_,snails,photographer,_,_), Hs),         % 7
	member(h(_,_,diplomat,_,yellow), Hs),             % 8
	Hs = [_,_,h(_,_,_,milk,_),_,_],                   % 9
	member(h(_,_,_,coffee,green), Hs),		  % 10
	next(h(norwegian,_,_,_,_), h(_,_,_,_,blue), Hs),  % 11
	member(h(_,_,violinist,juice,_), Hs),		  % 12
	next(h(_,fox,_,_,_), h(_,_,physician,_,_), Hs),   % 13
	next(h(_,_,diplomat,_,_), h(_,horse,_,_,_), Hs),  % 14

	member(h(_,_,_,water,_), Hs),		% one of them drinks water
	member(h(_,zebra,_,_,_), Hs).		% one of them owns a zebra

next(A, B, Ls) :- append(_, [A,B|_], Ls).
next(A, B, Ls) :- append(_, [B,A|_], Ls).
