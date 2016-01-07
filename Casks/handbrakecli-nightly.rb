cask 'handbrakecli-nightly' do
  version '20160105201345-ee1167e'
  sha256 '4f7c0bbc6f617e53eaf09709071feec8bf31c43e9b79c19443264a2e2bc394f1'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
