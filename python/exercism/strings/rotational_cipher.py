def rotate(text, key):
    result = []
    for letter in text:
        if letter.isalpha():
            new_position = ord(letter.lower()) + key
            if new_position >= ord("z"):
                new_position = ord("a") + ((new_position - ord("a")) % 26)

            new_letter = chr(new_position)

            if letter.isupper():
                new_letter = new_letter.upper()

            result.append(new_letter)
        else:
            result.append(letter)

    return "".join(result)
