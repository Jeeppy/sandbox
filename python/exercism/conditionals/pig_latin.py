VOWELS = "aeiou"
CONSONANT_CLUSTERS = [
    "sch",
    "thr",
    "bl",
    "br",
    "ch",
    "ck",
    "cl",
    "cr",
    "dr",
    "fl",
    "fr",
    "gh",
    "gl",
    "gr",
    "ng",
    "ph",
    "pl",
    "pr",
    "qu",
    "rh",
    "sc",
    "sh",
    "sk",
    "sl",
    "sm",
    "sn",
    "sp",
    "st",
    "sw",
    "th",
    "tr",
    "tw",
    "wh",
    "wr",
    "b",
    "c",
    "d",
    "f",
    "g",
    "h",
    "j",
    "k",
    "m",
    "n",
    "p",
    "q",
    "r",
    "s",
    "t",
    "v",
    "w",
    "x",
    "y",
    "z",
]


def to_pig_latin(word):
    if word[0] in VOWELS or (word[0:2] == "xr" or word[0:2] == "yt"):
        return word + "ay"
    for cluster in CONSONANT_CLUSTERS:
        if word.startswith(cluster):
            if word[len(cluster) : len(cluster) + 2] == "qu":
                return word[len(cluster) + 2 :] + word[0 : len(cluster) + 2] + "ay"
            else:
                return word[len(cluster) :] + cluster + "ay"
    return word


def translate(text):
    return " ".join([to_pig_latin(word) for word in text.split(" ")])
