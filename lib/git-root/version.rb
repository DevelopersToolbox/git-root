class GitRoot
    # Current major release.
    MAJOR = 0

    # Current minor release.
    MINOR = 1

    # Current patch level.
    PATCH = 3

    # Full release version.
    VERSION = [MAJOR, MINOR, PATCH].join('.').freeze
end
