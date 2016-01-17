cask 'handbrakecli-nightly' do
  version '20160105201345-ee1167e'
  sha256 '73199c0edfa9aeab6b77918e4d1469266ac2da560b5ae519201e763eb6415fc4'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on :macos => '>= :snow_leopard'

  binary 'HandBrakeCLI'
end
