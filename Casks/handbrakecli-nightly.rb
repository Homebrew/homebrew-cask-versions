cask 'handbrakecli-nightly' do
  version '20160119192635-2eef744'
  sha256 'cf16524827630e6d46d9629145371178621ad9e99be4b127f9c2d9cc14c5b1fe'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  binary 'HandBrakeCLI'
end
