cask :v1 => 'handbrakecli-nightly' do
  version '0.10.2-794-8d06a57'
  sha256 'bfd9f01b2d758a955267d19606fcb61d3ced3ad5b81b1642af015d968280ee98'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-master-MacOSX.7_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
