if IN_DOCKER:  # type: ignore # noqa: F821
    if MIDDLEWARE[0] != "django.middleware.security.SecurityMiddleware":  # type: ignore # noqa: F821
        raise AssertionError("MIDDLEWARE[0] must be django.middleware.security.SecurityMiddleware")
