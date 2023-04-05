
EXPECTED_BAKE_TIME = 40


def bake_time_remaining(oven_time):
    """Calculate remaining bake time in minutes

    :param oven_time: int - the actual minutes the lasagna has been in the oven
    :return: int - total time the lasagna still needs

    This function take one integers representing the number of minutes of
    lasagna in the oven and return total time in minute still needs
    """
    return EXPECTED_BAKE_TIME - oven_time


def preparation_time_in_minutes(number_of_layers):
    """Calculate total elapsed cooking time (prep + bake) in minutes.

    :param number_of_layers: int - the number of layers in the lasagna.
    :return: int - total time you've been cooking (in minutes).

    This function takes one integers representing the number of lasagna layers
    and calculate the total preparation time.
    """
    return 2 * number_of_layers


def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate the elapsed cooking time.

    :param number_of_layers: int - the number of layers in the lasagna.
    :param elapsed_bake_time: int - elapsed cooking time.
    :return: int - total time elapsed (in minutes) preparing and cooking.

    This function takes two integers representing the number of lasagna layers
    and the time already spent baking and calculates the total elapsed minutes
    spent cooking the lasagna.
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
