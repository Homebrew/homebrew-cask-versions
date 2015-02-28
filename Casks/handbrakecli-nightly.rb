cask :v1 => 'handbrakecli-nightly' do
  version '6945svn'
  sha256 '303289b4ed14f9053d1ccaf01bd440d33418a8303cdf9c69e0116d45cec5b9e3'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
