from collections import Counter

YACHT = lambda dice: 50 if len(set(dice)) == 1 else 0
ONES = lambda dice: number_of(dice, 1)
TWOS = lambda dice: number_of(dice, 2)
THREES = lambda dice: number_of(dice, 3)
FOURS = lambda dice: number_of(dice, 4)
FIVES = lambda dice: number_of(dice, 5)
SIXES = lambda dice: number_of(dice, 6)
FULL_HOUSE = lambda dice: sum(dice) if sorted(Counter(dice).values()) == [2, 3] else 0
FOUR_OF_A_KIND = lambda dice: max(
    [i * 4 for i in set(dice) if dice.count(i) >= 4], default=0
)
LITTLE_STRAIGHT = lambda dice: 30 if sorted(dice) == [1, 2, 3, 4, 5] else 0
BIG_STRAIGHT = lambda dice: 30 if sorted(dice) == [2, 3, 4, 5, 6] else 0
CHOICE = lambda dice: sum(dice)


def number_of(dice, value):
    return sum([d for d in dice if d == value])


def score(dice, category):
    return category(dice)
