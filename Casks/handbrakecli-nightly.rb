class HandbrakecliNightly < Cask
  version '6469svn'
  sha256 '0eb150843aa2a7f2f23ad1c9359478e1843f26fc12d50a0c55a8fc92f0a7d398'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
