cask :v1 => 'handbrakecli-nightly' do
  version '20151009220234-5220651'
  sha256 '8f5c3f1648979ca3eb433e78ed642f38ab07fcb9678ccc5cd9b12345dd562092'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
