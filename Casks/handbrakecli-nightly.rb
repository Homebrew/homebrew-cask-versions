cask :v1 => 'handbrakecli-nightly' do
  version '20151102232030-c518c56'
  sha256 '797a5ad1b4297d1836b9b9964aadc3240eeb992c19d1949971e939ab4b3071e6'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
