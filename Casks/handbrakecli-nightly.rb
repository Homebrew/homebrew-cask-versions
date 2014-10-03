class HandbrakecliNightly < Cask
  version '6430svn'
  sha256 'e62a9c051a00a00bdb09a76e624014a9c79c3cd387c9982f030282e11b1e1f1d'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
