cask :v1 => 'handbrakecli-nightly' do
  version '20151005212641-f311cb5'
  sha256 '7c9964a14ba10b84adea3968063114f250a50a20401166e98dd194b6e78d1a83'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
