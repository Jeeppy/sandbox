def triangle(sides):
    a, b, c = sides
    if a == 0 or b == 0 or c == 0:
        return False
    return a + b >= c and b + c >= a and a + c >= b


def equilateral(sides):
    if not triangle(sides):
        return False
    return len(set(sides)) == 1


def isosceles(sides):
    if not triangle(sides):
        return False
    a, b, c = sides
    return len(set(sides)) < 3


def scalene(sides):
    if not triangle(sides):
        return False
    return len(set(sides)) == 3
