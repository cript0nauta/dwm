with import <nixpkgs> {};

dwm.overrideAttrs (oldAttrs: rec {
  src = builtins.filterSource
    (path: type:
    baseNameOf path != ".git" &&
    baseNameOf path != "result"
    )
    ./.;
})
