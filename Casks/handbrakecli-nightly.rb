cask :v1 => 'handbrakecli-nightly' do
  version '20151204161257-0d0b4bc'
  sha256 '95a27b9e5167b2edfe1935bb9f997f2dcabd14d4e9b7f5537c75fc0de32f0b48'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
