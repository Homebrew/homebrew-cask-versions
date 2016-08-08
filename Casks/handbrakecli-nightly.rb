cask 'handbrakecli-nightly' do
  version '20160806103617-dfab1ce'
  sha256 '3e9b93b5736010ac1360edfc35714584a862c695a51f16e5b6473ea364cb16af'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
