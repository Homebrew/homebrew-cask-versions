cask :v1 => 'handbrakecli-nightly' do
  version '6859svn'
  sha256 '656a716c4c75d325cdfda874db4215ba280355b672c6f19ae5dd01325955d5af'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
