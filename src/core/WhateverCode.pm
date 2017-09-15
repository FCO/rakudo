my class WhateverCode is Code {

    # helper method for array slicing
    method pos(WhateverCode:D $self: \list) {
      nqp::if(
        nqp::iseq_i(
          nqp::getattr(
            nqp::getattr($self,Code,'$!signature'),
            Signature,
            '$!count'
          ),1),
        $self(nqp::if(nqp::isconcrete(list),list.elems,0)),
        $self(|(nqp::if(nqp::isconcrete(list),list.elems,0)
          xx nqp::getattr(
            nqp::getattr($self,Code,'$!signature'),
            Signature,
            '$!count'
          )
        ))
      )
    }
    method assuming(WhateverCode:D $self: |primers) {
        my &func = EVAL "-> {$self.signature.params>>.gist.join(", ")} \{ \$self.({$self.signature.params>>.name.join(", ")}) \}";
        &func.assuming(|primers)
    }
}

# vim: ft=perl6 expandtab sw=4
