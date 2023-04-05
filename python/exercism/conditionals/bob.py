SURE = "Sure."
CHILL_OUT = "Whoa, chill out!"
CALM_DOWN = "Calm down, I know what I'm doing!"
FINE = "Fine. Be that way!"
WHATEVER = "Whatever."


def response(hey_bob):
    is_upper = hey_bob.isupper()
    is_question = hey_bob.strip().endswith("?")
    is_silence = len(hey_bob.strip()) == 0
    if is_question:
        if is_upper:
            return CALM_DOWN
        else:
            return SURE
    elif is_upper:
        return CHILL_OUT
    elif is_silence:
        return FINE
    return WHATEVER
