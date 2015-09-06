cask :v1 => 'handbrakecli-nightly' do
  version '0.10.2-799-85133c4'
  sha256 '2e27d9d9b7367221f34c86d809e26523cc8dc48885857793b691341562ac629e'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-master-MacOSX.7_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
