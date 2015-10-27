cask :v1 => 'handbrakecli-nightly' do
  version '20151025064128-7d77400'
  sha256 '8690fbd44f0a876784b2a1ca47b2c12c96468ff3bf250003fa2ced38a6d4f225'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
