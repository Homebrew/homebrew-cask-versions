class HandbrakecliNightly < Cask
  version '6452svn'
  sha256 'cce4733a704bab3d0314d8950b98c2cdce4ed47e4e838727f8e996a3f5cfa537'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
