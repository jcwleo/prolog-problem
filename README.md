# Zebra prolog problem in swi-prolog
## Rules
Five men with different nationalities and with different jobs live in con-secutive houses on a street. The houses are painted different colors. The men have different pets and have different favorite drinks. Determine who owns a zebra and whose favorite drink is mineral water (which is one of the favorite drinks) given these clues:

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

## Run
```
?- consult('~/zebra.pl').
true.

?- zebra_water(Owner,Drinker).
Owner = japanese,
Drinker = norwegian .
```

