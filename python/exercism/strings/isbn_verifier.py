VALID = "0123456789X"


def is_valid(isbn):
    isbn = isbn.replace("-", "")

    if not isbn or len(isbn) != 10 or not all([digit in VALID for digit in isbn]):
        return False

    return (
        sum([(k + 1) * int(v) if v != "X" else 10 for k, v in enumerate(isbn[::-1])])
        % 11
        == 0
    )
