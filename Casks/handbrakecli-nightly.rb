cask :v1 => 'handbrakecli-nightly' do
  version '0.10.2-811-9f2ad1f'
  sha256 '49c30b2439102d507e1719c827392d15a61eeb7c0851335d975e07bc9a2bb32a'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-master-MacOSX.7_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
