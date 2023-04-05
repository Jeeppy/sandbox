def convert(number):
    is_factor = lambda number, factor: number % factor == 0

    is_factor3 = is_factor(number, 3)
    is_factor5 = is_factor(number, 5)
    is_factor7 = is_factor(number, 7)

    sounds = "".join(
        [
            "Pling" if is_factor3 else "",
            "Plang" if is_factor5 else "",
            "Plong" if is_factor7 else "",
        ]
    )

    return sounds if len(sounds) > 0 else str(number)
