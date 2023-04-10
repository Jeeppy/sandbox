def check_ip(ip):
    """
    Check if an adress IP (IPv4) is valid

    :param str: IP address
    :return: True if IP is valid, False otherwise
    """

    digits = ip.split(".")

    if len(digits) != 4:
        return False

    return all((0 < int(digit) < 256 for digit in digits))
