{ stdenv, fetchFromGitHub } :


stdenv.mkDerivation rec {
  version = "1.0";
  pname = "beamer-torino";
  name = "${pname}-${version}";
  tlType = "run";

  src = ./.;

  # src = fetchFromGitHub {
  #   owner = "barisione";
  #   repo = "beamer-torino";
  #   rev = "72ec2015490a03da395ca8034aea7c4702aa2b84";
  #   sha256 = "1mcl21k1k2s0idg4rdjwxdda2njadyb0n1blgxr3399zb5i22650";
  # };

  buildInputs = [ ];

  dontBuild = true;
  installPhase = "
    target=$out/tex/latex/torino
    mkdir -p $target
    cp *.sty *.pdf *.png $target
  ";

}
