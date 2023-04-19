def rotate(text, key):
    result = []
    for letter in text:
        if letter.isalpha():
            offset = ord("A") if letter.isupper() else ord("a")
            new_letter = chr((ord(letter) - offset + key) % 26 + offset)
            result.append(new_letter)
        else:
            result.append(letter)

    return "".join(result)
