if IN_DOCKER:  # type: ignore
    if MIDDLEWARE[0] != "django.middleware.security.SecurityMiddleware":  # type: ignore
        raise AssertionError("MIDDLEWARE[0] must be django.middleware.security.SecurityMiddleware")
