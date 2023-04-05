def is_armstrong_number(number):
    digits = [int(number) for number in str(number)]
    return sum([digit ** len(digits) for digit in digits]) == number
