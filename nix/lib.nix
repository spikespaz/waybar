final: prev:
let
  lib = final;

  mkDate = longDate:
    (lib.concatStringsSep "-" [
      (builtins.substring 0 4 longDate)
      (builtins.substring 4 2 longDate)
      (builtins.substring 6 2 longDate)
    ]);
in prev // {
  #
  inherit mkDate;
}
