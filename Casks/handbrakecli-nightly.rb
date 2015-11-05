cask :v1 => 'handbrakecli-nightly' do
  version '20151103090012-4c829b3'
  sha256 'af37e478ecb4651c169ce40092b4c99e4f45a4c48ee81f7ba301ba5a6d76effa'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
