{ buildDunePackage, fetchFromGitHub, melange, reason, reactjs-jsx-ppx }:

buildDunePackage rec {
  pname = "reason-react";
  version = "n/a";
  src = fetchFromGitHub {
    owner = "reasonml";
    repo = "reason-react";
    rev = "e15e7288ee82bc41c25732ae87ff137db97fd8a3";
    hash = "sha256-uSRe3WOKFnlYO9K/iVL/9YcuC2tptj2SxRAlJSwKeKs=";
  };

  nativeBuildInputs = [ reason ];
  propagatedNativeBuildInputs = [ melange ];
  propagatedBuildInputs = [ melange reason reactjs-jsx-ppx ];

  # TODO: this is a workaround
  dontDetectOcamlConflicts = true;
}
