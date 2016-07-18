cask 'handbrakecli-nightly' do
  version '20160716194210-39d0352'
  sha256 'bd2b61433254cf4f1b567656afa23198e0e2e505dbf6fd0ed771d260a86d5d2c'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
