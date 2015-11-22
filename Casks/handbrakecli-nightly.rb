cask :v1 => 'handbrakecli-nightly' do
  version '20151119221733-6c731e1'
  sha256 '63e136d94df32a0319f198270ff00096bdbd351acdff055663cbe219e67d82ea'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
