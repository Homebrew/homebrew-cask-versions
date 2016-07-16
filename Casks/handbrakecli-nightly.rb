cask 'handbrakecli-nightly' do
  version '20160715211947-dc3b72e'
  sha256 'e39cf59c326605bf3e24c1fce230150cb325ee0fe1d2982bc3dba00d3c3b5407'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
