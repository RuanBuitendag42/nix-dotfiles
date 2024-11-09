{ pkgs }:
pkgs.stdenv.mkDerivation {
  pname = "sddm-corners-theme";
  version = "1.0.0";

  src = pkgs.fetchzip {
    url = "https://github.com/prasanthrangan/hyprdots/raw/main/Source/arcs/Sddm_Corners.tar.gz";
    hash = "sha256-vpHsLcGKtlZQHMI2cc76aRycpaYxig2u0zDd3EmbnVk=";
  };

  installPhase = ''
    mkdir -p $out/share/sddm/themes/Corners
    cp -r * $out/share/sddm/themes/Corners
  '';

  meta = with pkgs.lib; {
    description = "Corners theme for SDDM";
    homepage = "https://github.com/prasanthrangan/hyprdots";
    license = licenses.gpl3;
    platforms = platforms.linux;
    maintainers = [ ];
  };
}
