class HandbrakecliNightly < Cask
  version '6494svn'
  sha256 '4a3fdb6f98e1f9c622fd6d9d92ecb7ad9dd5e5e2c1f5242330e5cfda065d06bf'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
