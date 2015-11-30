cask :v1 => 'handbrakecli-nightly' do
  version '20151126230838-46e641c'
  sha256 'd271ac912f5c92c16f69560b48b79e78878b1621e4e4cd5727eaf88bab8b18b5'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
