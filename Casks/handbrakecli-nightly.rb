cask 'handbrakecli-nightly' do
  version '20151215211028-c0111a2'
  sha256 'dcc1abad8cae443e63bc3d8d79368eadb58eb9fd4051c2d81066ba38de5423d5'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
