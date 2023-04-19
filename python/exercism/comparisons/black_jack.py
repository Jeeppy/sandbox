HEAD = ['10', 'J', 'Q', 'K']


def value_of_card(card):
    if card in ['J', 'Q', 'K']:
        return 10
    if card == 'A':
        return 1

    return int(card)


def higher_card(card_one, card_two):
    value_one = value_of_card(card_one)
    value_two = value_of_card(card_two)

    if value_one > value_two:
        return card_one
    if value_two > value_one:
        return card_two

    return (card_one, card_two)


def value_of_ace(card_one, card_two):
    value_one = value_of_card(card_one)
    value_two = value_of_card(card_two)

    if card_one == 'A' or card_two == 'A':
        return 1

    if value_one + value_two <= 10:
        return 11

    return 1


def is_blackjack(card_one, card_two):
    if card_one != 'A':
        value_one = value_of_card(card_one)
    else:
        value_one = 11 if card_two in HEAD else 1

    if card_two != 'A':
        value_two = value_of_card(card_two)
    else:
        value_two = 11 if card_one in HEAD else 1

    return value_one + value_two == 21


def can_split_pairs(card_one, card_two):
    return card_one == card_two or (card_one in HEAD and card_two in HEAD)


def can_double_down(card_one, card_two):
    value_one = value_of_card(card_one)
    value_two = value_of_card(card_two)
    return value_one + value_two > 8 and value_one + value_two < 12
