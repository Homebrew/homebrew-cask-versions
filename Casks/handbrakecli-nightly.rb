cask :v1 => 'handbrakecli-nightly' do
  version '6822svn'
  sha256 '06b3024888643041779f4ac301266739ef6a6c4a30972a951aec881fb28f50c3'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
