cask :v1 => 'handbrakecli-nightly' do
  version '20151122213156-ec2474b'
  sha256 '4b547f6ec52e53c21366ecc7a84bed36e10c6a0cded66d79c9a166ba649faaca'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
