cask 'handbrakecli-nightly' do
  version '20160730184204-9b7ef42'
  sha256 '221b3180372ff5c04a91cbdde66491a0208cee41cd193d149647699d175cc205'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
