cask :v1 => 'handbrakecli-nightly' do
  version '0.10.2-812-8ea1a78'
  sha256 'e3148f217d46acda0b21fc4d2b18bd56c798dffec0b22642e2096d956a948e5f'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-master-MacOSX.7_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
