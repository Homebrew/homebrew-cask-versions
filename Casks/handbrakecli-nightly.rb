class HandbrakecliNightly < Cask
  version '6507svn'
  sha256 'a68c96f1e4fdfd9207f319d69831d5f0499ad67df240314dfc0d7e51fe3a10fe'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
