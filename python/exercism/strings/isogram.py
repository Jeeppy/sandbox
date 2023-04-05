import re
from collections import Counter


def is_isogram(string):
    string = re.sub(r"[^a-zA-Z]", "", string)
    return len(set(Counter(string.lower()).values())) == 1 or len(string) == 0
