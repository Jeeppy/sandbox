LETTERS = "abcdefghijklmnopqrstuvwxyz"


def is_pangram(sentence):
    return all([char.lower() in sentence.lower().replace(".", "") for char in LETTERS])
