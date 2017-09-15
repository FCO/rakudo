my role Callable[::T = Mu] {
    method of() { T }
    method returns() { T }
    method assuming(Callable:D $self: |primers) {
        my &func = EVAL "-> {$self.signature.params>>.gist.join(", ")} \{ \$self.({$self.signature.params>>.name.join(", ")}) \}";
        &func.assuming(|primers)
    }
}

# vim: ft=perl6 expandtab sw=4
