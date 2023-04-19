import math

OUTER = 10
MIDDLE = 5
INNER = 1

def score(x, y):
    distance = math.sqrt((x)**2 + (y)**2)

    if distance <= INNER:
        return 10
    if distance <= MIDDLE:
        return 5
    if distance <= OUTER:
        return 1
    return 0
