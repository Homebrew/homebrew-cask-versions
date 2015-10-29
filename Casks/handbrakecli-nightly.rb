cask :v1 => 'handbrakecli-nightly' do
  version '20151028212323-9dfee71'
  sha256 'd25f057133a465848cc1c44ef373e262471315bbfeebd4a44cdc44259bdd6329'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
