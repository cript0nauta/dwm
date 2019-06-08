with import <nixpkgs> {};

dwm.overrideAttrs (oldAttrs: rec {
  dontPatchELF = true;
  dontStrip = true;
  src = builtins.filterSource
    (path: type:
    baseNameOf path != ".git" &&
    baseNameOf path != "result"
    )
    ./.;
})
