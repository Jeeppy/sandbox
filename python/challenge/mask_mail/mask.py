def mask_email(email):
    name, domain = email.split("@")
    domain, extension = domain.split(".")

    return f"{name[0]}***.{domain[0]}***.{extension[0]}***"
