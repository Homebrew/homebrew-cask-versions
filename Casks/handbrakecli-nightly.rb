class HandbrakecliNightly < Cask
  version '6419svn'
  sha256 '3fcd67ddda23ba406789f0f00c9d501fd85a6c6348385ba6da8550db0fcfefb2'

  url 'http://download.handbrake.fr/nightly/HandBrake-6419svn-MacOSX.6_CLI_x86_64.dmg'
  homepage 'http://handbrake.fr'
  license :unknown

  binary 'HandBrakeCLI'
end
