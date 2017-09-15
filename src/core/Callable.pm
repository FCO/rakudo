my role Callable[::T = Mu] {
    method of() { T }
    method returns() { T }
    method assuming(|) {die "NYI"}
}

# vim: ft=perl6 expandtab sw=4
