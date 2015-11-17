cask :v1 => 'handbrakecli-nightly' do
  version '20151116073140-7bf2842'
  sha256 '297354b5f7483b27d9c77c559b3d8771e012abc6a2275a1fa5a00b110c59d4a2'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
