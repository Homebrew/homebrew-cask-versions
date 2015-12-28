cask 'handbrakecli-nightly' do
  version '20151227221722-1e56395'
  sha256 '0cf16c94e3fbf47112449a4a769031f15f95bfaeeb96698f8e6cef7db1ed4c62'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
