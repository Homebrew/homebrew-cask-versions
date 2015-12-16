cask :v1 => 'handbrakecli-nightly' do
  version '20151214201229-5cfc84b'
  sha256 'c0166936f38be33972a3d026e5f4abd282660ed4570af0940bd35fdf80bb3c83'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
